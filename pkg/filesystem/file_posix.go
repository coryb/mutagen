//go:build !windows

package filesystem

import "sync/atomic"

// file is the readable file implementation used on POSIX systems. We avoid
// using os.File because its construction and operation can be expensive, its
// internals are complex, and it doesn't add any benefit for regular on-disk
// files (since polling and asynchronous I/O aren't currently supported).
type file int32

// Read implements io.Reader.Read.
func (f *file) Read(buffer []byte) (int, error) {
	return readRetryingOnEINTR(int(*f), buffer)
}

// Seek implements io.Seeker.Seek.
func (f *file) Seek(offset int64, whence int) (int64, error) {
	return seekConsideringEINTR(int(*f), offset, whence)
}

// Close implements io.Closer.Close.
func (f *file) Close() error {
	fd := atomic.SwapInt32((*int32)(f), -1)
	if fd == -1 {
		panic("calling close on a closed file")
	}
	return closeConsideringEINTR(int(fd))
}
