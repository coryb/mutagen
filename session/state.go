package session

import (
	"github.com/havoc-io/mutagen/sync"
)

type SynchronizationStatus uint8

const (
	SynchronizationStatusIdle = iota
	SynchronizationStatusConnecting
	SynchronizationStatusInitializing
	SynchronizationStatusScanning
	SynchronizationStatusReconciling
	SynchronizationStatusStaging
	SynchronizationStatusTransitioning
	SynchronizationStatusSaving
)

type StagingStatus struct {
	Path  string
	Index uint64
	Total uint64
}

// SynchronizationState represents the current state of a synchronization loop.
type SynchronizationState struct {
	Status         SynchronizationStatus
	AlphaConnected bool
	BetaConnected  bool
	LastError      string
	AlphaStaging   StagingStatus
	BetaStaging    StagingStatus
	Conflicts      []sync.Conflict
	AlphaProblems  []sync.Problem
	BetaProblems   []sync.Problem
}

type SessionState struct {
	Session *Session
	State   SynchronizationState
}
