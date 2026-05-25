# Project Heimdall

![Status](https://img.shields.io/badge/status-active_build-blue)
![Version](https://img.shields.io/badge/version-0.1.0--alpha-informational)
![Ruby](https://img.shields.io/badge/Ruby-4.0-red)
![Rails](https://img.shields.io/badge/Rails-latest-red)
![Database](https://img.shields.io/badge/database-PostgreSQL-blue)
![Tooling](https://img.shields.io/badge/tooling-mise-purple)
![Deployment](https://img.shields.io/badge/deploy-Docker_on_DigitalOcean-darkblue)
![License](https://img.shields.io/badge/license-PolyForm_Noncommercial_1.0.0-orange)
![Built By](https://img.shields.io/badge/built_by-TechSolvd_by_Heath_Babb-black)

> Keep teams aligned, clients informed, and project work moving.

## 🚀 Overview

**Project Heimdall** is a project management and collaboration platform by **TechSolvd | Heath Babb**.

Heimdall helps project-based firms coordinate internal work, manage schedules, assign responsibilities, track progress, communicate with clients, handle delays, and deliver work through one shared project system.

### Mission

Project Heimdall exists to give teams and clients one clear place to understand:

- what work is active
- who is responsible
- where the project stands
- what changed today
- what is delayed
- what needs attention
- what has been delivered
- what the client needs to know next

Heimdall is built around a simple idea:

> A project should be the shared source of truth for the people doing the work and the clients waiting on the result.

## ✨ Core Features

### Project Management

Create and manage project records with the information needed to understand the work, client, status, responsibilities, schedule, updates, and deliverables.

Projects should carry the working context of the job from start to finish.

### Team Assignments

Assign team members to the responsibilities needed to complete the project.

Example responsibilities include:

- project manager
- business development contact
- researcher
- field surveyor
- CAD technician
- reviewer
- coordinator
- administrator

Roles can overlap because real project work does not always fit into a rigid structure.

### Scheduling

Manage project schedules from assignment through completion.

The scheduling system is intended to support:

- target start dates
- target completion dates
- assigned teams
- assigned individuals
- role-based scheduling
- field crew availability
- production availability
- project dependencies
- schedule changes
- delays
- client-facing updates

### Daily Progress Notes

Team members can record daily project updates so everyone can see what happened, what changed, what is blocked, and what needs attention.

These updates create a practical project rhythm for keeping the team informed without relying on scattered messages, disconnected notes, or unnecessary meetings.

### Weather-Aware Delays

Weather affects field work and project schedules.

Heimdall will include weather-aware delay handling so affected schedules can shift, project impacts can be tracked, and clients can receive clearer updates.

### Client Portal

The client portal gives clients a clear place to view project updates, receive messages, access deliverables, and stay informed without relying on constant phone calls and emails.

The portal is part of the project workflow, not a separate afterthought.

### Deliverable Tracking

Deliverables stay connected to the project record.

The system should track:

- what was delivered
- when it was delivered
- who sent it
- who received it
- what project it belongs to
- whether follow-up is needed

### Project Visibility

Project managers, business development staff, technicians, and leadership should be able to understand the state of active work without digging through disconnected systems.

Heimdall should make it easier to see:

- active projects
- delayed projects
- upcoming deadlines
- assigned responsibilities
- daily progress
- client communication needs
- deliverable status
- project history

## 🗺️ Roadmap

### MVP

The first version focuses on the internal project foundation.

MVP goals:

- create projects
- manage project details
- track project status
- assign team members
- define project responsibilities
- support overlapping roles
- record daily progress notes
- maintain project context and history
- provide a clear active project list
- establish the core data model for scheduling, client portal access, deliverables, and reporting

### Future Features

Planned future features include:

- client portal
- client messaging
- client-visible project updates
- deliverable sharing
- project scheduling
- team scheduling
- weather-aware delay logic
- automatic schedule shifting
- role-based dashboards
- reporting
- notifications
- field-friendly updates
- integrations
- billing or accounting handoff

## 🛠️ Tech Stack

- **Language:** Ruby
- **Framework:** Ruby on Rails
- **Database:** PostgreSQL
- **Tooling:** mise
- **Deployment:** Docker on DigitalOcean

## ⚙️ Getting Started

Install project tools and dependencies:

```bash
mise install
bundle install
```

Set up the application:

```bash
bin/setup
```

Run the development server:

```bash
bin/rails server
```

Run the test suite:

```bash
bin/rails test
```

## 🤝 Contributing

Ideas, feedback, issues, and bug reports are welcome.

This project is currently focused on reaching a stable v1 product. Because of that, outside pull requests are not being accepted at this time.

You are welcome to contribute by:

- opening issues
- reporting bugs
- suggesting improvements
- asking questions
- sharing workflow feedback
- identifying unclear behavior
- suggesting documentation improvements

Please do not submit pull requests unless contribution rules change in the future or a separate contributor agreement is in place.

This keeps the project focused, protects the product direction, and avoids licensing complications while the first version is being built.

## 📄 License

This project is licensed under the **PolyForm Noncommercial License 1.0.0**.

You may use, study, modify, and share this software for noncommercial purposes under the terms of the license.

Commercial use is not permitted without a separate commercial license from **Heath Babb at TechSolvd**.

Commercial use includes using this software to operate, support, manage, or provide services for a business, firm, client, customer, or commercial organization.

For commercial licensing, contact **Heath Babb at TechSolvd**.

See the `LICENSE` file for the full license terms.

## 🏢 About

Project Heimdall is built by **Heath Babb of TechSolvd**.

The product is being developed from real-world experience in land development, surveying, CAD production, project coordination, client communication, and professional service workflows.