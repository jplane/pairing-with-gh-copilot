## Guidelines for Creating or Updating a Plan

- When creating a plan, organize it into numbered phases (e.g., "Phase 1: Setup Dependencies")
- Break down each phase into specific tasks with numeric identifiers (e.g., "Task 1.1: Add Dependencies")
- Please only create one document per plan
- Mark phases and tasks as `- [ ]` while not complete and `- [x]` once completed
- End the plan with success criteria that define when the implementation is complete
- Plans that you produce should go under `docs/plans`
- Use a consistent naming convention `YYYYMMDD-<short-description>.md` for plan files

## Guidelines for Implementing a Plan

- Code you write should go under `src`
- When coding you need to follow the plan and check off phases and tasks as they are completed
- As you complete a task, update the plan by marking that task as complete before you begin the next task
- As you complete a phase, update the plan by marking that phase as complete before you begin the next phase
- Tasks that involve tests should not be marked complete until the tests pass
- Create one coding notes file per plan, in `docs/notes` with naming convention `<plan-file-name>-notes.md`
   - Include a link to the plan file
- When you complete implementation for a plan phase, create a notes entry in the notes file for the plan and summarize the completed work as follows:
   - Phase name
   - Timestamp (`YYYY-MM-DDThh:mm:ss`)
   - Name of person who initiated the change
   - Major files added, updated, removed
   - Major features added, updated, removed
   - Noteworthy use of patterns, abstractions, data structures, algorithms, etc.
   - Governing design principles
