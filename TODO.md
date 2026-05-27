# TODO.md — Project Heimdall MVP

> Build order for the first usable version of Project Heimdall.
>
> Each top-level section is a Git branch. Work one branch at a time, keep commits small, and merge only when the branch has a clear working result.

## Build Rules

- Use branch names in the format `feat/<branch-name>`.
- Keep each branch focused on one buildable piece.
- Do not mix unrelated schema, UI, and refactor work in the same branch.
- Each branch should end with a working app state.
- Add tests as the behavior becomes clear.
- Prefer the smallest useful version first.

---

## MVP Build Order

1. `feat/app-foundation`
2. `feat/staff-accounts`
3. `feat/client-records`
4. `feat/project-records`
5. `feat/project-status`
6. `feat/project-assignments`
7. `feat/project-schedule-fields`
8. `feat/daily-progress-notes`
9. `feat/project-activity-history`
10. `feat/project-list-dashboard`
11. `feat/basic-search-and-filters`
12. `feat/deliverable-records`
13. `feat/mvp-polish`

---

# feat/app-foundation

## Description

Set up the Rails application foundation so the project has a clean starting point before building domain features.

This branch should focus on configuration, development setup, database setup, README/license files, and the first working Rails app state.

## Tasks

- [x] Confirm Ruby is managed by `mise`
- [x] Confirm the project uses Ruby `4.0`
- [x] Confirm Rails is installed and working
- [x] Confirm PostgreSQL is configured
- [x] Confirm the app boots locally
- [x] Add `README.md`
- [x] Add `TODO.md`
- [x] Add `LICENSE`
- [x] Add PolyForm Noncommercial License 1.0.0 text to `LICENSE`
- [x] Add basic project metadata
- [ ] Confirm `bin/setup` works
- [x] Confirm `bin/rails server` works
- [ ] Confirm `bin/rails test` works

## Done When

- The Rails app boots successfully.
- PostgreSQL is connected.
- The repo has README, TODO, and LICENSE files.
- The test command runs successfully.

---

# feat/staff-accounts

## Description

Create the internal user foundation for people who work inside the company.

Project Heimdall needs internal users before it can support assignments, notes, project ownership, or role-based responsibility.

## Tasks

- [ ] Create staff/user account model
- [ ] Add basic authentication
- [ ] Add login/logout flow
- [ ] Add current user access in the app
- [ ] Add basic user profile fields
    - [ ] name
    - [ ] email
    - [ ] role/title
    - [ ] active/inactive status
- [ ] Seed an initial admin/developer account for local development
- [ ] Add tests for user account behavior

## Notes

This does not need full enterprise permissions yet.

The MVP needs enough identity to know who created a project, who is assigned, and who wrote daily progress notes.

## Done When

- A staff user can log in.
- A logged-in user can access the app.
- The app can associate records with a staff user.

---

# feat/client-records

## Description

Create the basic client/contact foundation.

Projects need to be connected to clients and client contacts so project records are not isolated from the people or companies the work is for.

## Tasks

- [ ] Create client/company model
- [ ] Create contact model
- [ ] Associate contacts with clients
- [ ] Add client fields
    - [ ] name
    - [ ] phone
    - [ ] email
    - [ ] website
    - [ ] notes
    - [ ] active/inactive status
- [ ] Add contact fields
    - [ ] first name
    - [ ] last name
    - [ ] email
    - [ ] phone
    - [ ] title/role
    - [ ] notes
    - [ ] active/inactive status
- [ ] Add client list page
- [ ] Add client detail page
- [ ] Add create/edit forms
- [ ] Add basic tests

## Done When

- A user can create clients.
- A user can create contacts under clients.
- A project can later be attached to a client/contact.

---

# feat/project-records

## Description

Create the core project record.

This is the center of the MVP. Every later feature depends on a clear project model.

## Tasks

- [ ] Create project model
- [ ] Associate project with client
- [ ] Optionally associate project with primary client contact
- [ ] Add project fields
    - [ ] project name
    - [ ] project number or internal identifier
    - [ ] client
    - [ ] primary contact
    - [ ] location / site description
    - [ ] service type
    - [ ] description / scope summary
    - [ ] current status
    - [ ] priority
    - [ ] created by
    - [ ] active/inactive flag
- [ ] Add project list page
- [ ] Add project detail page
- [ ] Add create/edit forms
- [ ] Add basic validations
- [ ] Add basic tests

## Notes

Keep the first version simple.

The project record should be useful before scheduling, assignments, notes, or client portal features exist.

## Done When

- A user can create, view, edit, and list projects.
- Each project is connected to a client.
- Project records have enough information to describe the work.

---

# feat/project-status

## Description

Add structured project status tracking.

The MVP needs a clear way to show where a project stands without relying on freeform notes only.

## Tasks

- [ ] Define initial project status values
    - [ ] new
    - [ ] pending review
    - [ ] scheduled
    - [ ] in progress
    - [ ] waiting on client
    - [ ] delayed
    - [ ] ready for review
    - [ ] delivered
    - [ ] closed
    - [ ] canceled
- [ ] Add status transitions to project edit flow
- [ ] Show status clearly on project list
- [ ] Show status clearly on project detail page
- [ ] Add status changed timestamp
- [ ] Add status changed by user
- [ ] Add tests for valid statuses

## Done When

- Every project has a visible status.
- Status can be changed by an internal user.
- Status is visible from the project list and detail pages.

---

# feat/project-assignments

## Description

Add project team assignments.

A project manager should be able to assign people to responsibilities on a project. Roles can overlap, and one person may hold multiple responsibilities.

## Tasks

- [ ] Create project assignment model
- [ ] Associate assignment with project
- [ ] Associate assignment with staff user
- [ ] Add assignment responsibility field
- [ ] Define initial responsibility values
    - [ ] project manager
    - [ ] business development
    - [ ] researcher
    - [ ] field surveyor
    - [ ] CAD technician
    - [ ] reviewer
    - [ ] coordinator
    - [ ] administrator
- [ ] Allow multiple assignments per project
- [ ] Allow one user to hold multiple responsibilities
- [ ] Add assignment start date
- [ ] Add assignment end date
- [ ] Add active/inactive assignment status
- [ ] Show assignments on project detail page
- [ ] Add assignment management UI
- [ ] Add tests

## Done When

- A project can have assigned team members.
- A staff member can hold more than one responsibility.
- Assignments are visible on the project detail page.

---

# feat/project-schedule-fields

## Description

Add basic project schedule fields.

This branch should not build the full scheduling engine yet. It should establish the schedule data needed for the MVP and future scheduling features.

## Tasks

- [ ] Add planned start date
- [ ] Add planned completion date
- [ ] Add actual start date
- [ ] Add actual completion date
- [ ] Add schedule notes
- [ ] Add delayed flag or delayed status behavior
- [ ] Add delay reason field
- [ ] Show schedule information on project detail page
- [ ] Show key schedule dates on project list page
- [ ] Add tests for schedule fields

## Notes

The MVP needs simple schedule visibility.

Automatic schedule shifting, weather logic, availability planning, and client-facing schedule updates belong in later branches.

## Done When

- A project has visible schedule dates.
- A project can show whether it is delayed.
- Schedule information appears in the project list and project detail page.

---

# feat/daily-progress-notes

## Description

Add daily project updates.

Technicians and assigned team members need a simple way to report what happened, what changed, what is blocked, and what needs attention.

## Tasks

- [ ] Create daily progress note model
- [ ] Associate note with project
- [ ] Associate note with author/staff user
- [ ] Add note fields
    - [ ] work performed
    - [ ] blockers
    - [ ] next steps
    - [ ] internal note
    - [ ] visible date
- [ ] Add note creation form on project detail page
- [ ] Show notes in chronological order
- [ ] Show author and date
- [ ] Allow note editing by author/admin
- [ ] Add tests

## Notes

This is one of the most important MVP features.

The notes should support a practical daily rhythm without becoming a complicated meeting system.

## Done When

- A user can add a daily progress note to a project.
- Notes show who wrote them and when.
- Notes are visible from the project detail page.

---

# feat/project-activity-history

## Description

Create a basic project history feed.

The MVP should make it easy to understand what has happened on a project without searching across multiple screens.

## Tasks

- [ ] Show daily progress notes in the project history
- [ ] Show status changes in the project history
- [ ] Show assignment changes in the project history
- [ ] Show schedule changes in the project history
- [ ] Add timestamps to activity items
- [ ] Add user attribution to activity items
- [ ] Order activity from newest to oldest
- [ ] Add tests for activity history display

## Notes

Keep this simple.

This does not need a complex audit/event system at first. The first version can be a project activity view that combines existing project-related records.

## Done When

- A user can open a project and see a useful history of project activity.
- Notes, status changes, assignments, and schedule changes are visible in one place.

---

# feat/project-list-dashboard

## Description

Create the main internal project list/dashboard.

This should become the first useful working screen for the MVP.

## Tasks

- [ ] Create dashboard page
- [ ] Show active projects
- [ ] Show project status
- [ ] Show client
- [ ] Show project manager
- [ ] Show key assigned roles
- [ ] Show planned completion date
- [ ] Show delayed indicator
- [ ] Show last update date
- [ ] Link each project to project detail page
- [ ] Add empty state for no projects
- [ ] Add tests where practical

## Done When

- A logged-in user can see active projects from one screen.
- The dashboard gives a useful snapshot of project work.
- Each project links to the full project record.

---

# feat/basic-search-and-filters

## Description

Add basic ways to find and narrow projects.

The MVP needs simple filtering before it needs advanced reporting.

## Tasks

- [ ] Add search by project name
- [ ] Add search by project number
- [ ] Add filter by status
- [ ] Add filter by client
- [ ] Add filter by assigned user
- [ ] Add filter by delayed projects
- [ ] Add filter by active/closed projects
- [ ] Preserve filter state in query params
- [ ] Add tests for basic filtering

## Done When

- A user can search and filter the project list.
- The project dashboard remains useful as the number of projects grows.

---

# feat/deliverable-records

## Description

Add basic deliverable tracking.

This branch should track deliverable records, not build the full client portal or file delivery system yet.

## Tasks

- [ ] Create deliverable model
- [ ] Associate deliverable with project
- [ ] Add deliverable fields
    - [ ] name
    - [ ] description
    - [ ] deliverable type
    - [ ] status
    - [ ] due date
    - [ ] delivered date
    - [ ] delivered by
    - [ ] recipient/contact
    - [ ] notes
- [ ] Show deliverables on project detail page
- [ ] Add deliverable create/edit forms
- [ ] Add deliverable statuses
    - [ ] planned
    - [ ] in progress
    - [ ] ready
    - [ ] delivered
    - [ ] revised
    - [ ] canceled
- [ ] Add tests

## Notes

Do not build the full client portal here.

This branch creates the internal foundation for future client-facing deliverable sharing.

## Done When

- A project can have deliverable records.
- Deliverables are visible from the project detail page.
- Delivered items can be tracked without relying on memory.

---

# feat/mvp-polish

## Description

Clean up the MVP so the first version feels coherent and usable.

This branch should improve usability without adding major new features.

## Tasks

- [ ] Review navigation
- [ ] Review page titles
- [ ] Review empty states
- [ ] Review forms
- [ ] Review validation messages
- [ ] Review project dashboard layout
- [ ] Review project detail layout
- [ ] Add basic seed data for development
- [ ] Clean up README if needed
- [ ] Confirm tests pass
- [ ] Confirm app boots cleanly
- [ ] Tag MVP milestone when ready

## Done When

- The MVP is usable from login through project creation, assignment, notes, status, schedule fields, and project dashboard.
- The app feels like one coherent product foundation.
- The repo is ready for the next development phase.

---

# Post-MVP Backlog

These are important, but they should not block the MVP foundation.

## Client Portal

- [ ] Client user accounts
- [ ] Client login
- [ ] Client project access
- [ ] Client-visible project status
- [ ] Client-visible updates
- [ ] Client messages
- [ ] Client deliverable access

## Scheduling System

- [ ] Team availability
- [ ] Crew scheduling
- [ ] Role-based schedule planning
- [ ] Schedule dependencies
- [ ] Automatic schedule shifting
- [ ] Schedule conflict warnings

## Weather-Aware Delay System

- [ ] Weather data integration
- [ ] Project location weather checks
- [ ] Field-work impact rules
- [ ] Automatic delay suggestions
- [ ] Client-facing delay update generation

## Notifications

- [ ] Internal project update notifications
- [ ] Assignment notifications
- [ ] Delay notifications
- [ ] Client update notifications

## Reporting

- [ ] Active project reports
- [ ] Delayed project reports
- [ ] Team workload reports
- [ ] Deliverable status reports
- [ ] Client communication reports

## Integrations

- [ ] Email integration
- [ ] Calendar integration
- [ ] File storage integration
- [ ] Billing/accounting handoff
- [ ] External weather service integration