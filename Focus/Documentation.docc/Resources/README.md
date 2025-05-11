# Product Requirements Document  
**Product Name**: *Focus*  
**Platform**: iOS  
**Version**: MVP  

---

## 1. Objective

Design an iOS app that helps users reflect, plan, and track their life focus. It enables them to create and interact with customizable pages that organize goals, inspiration, tasks, and routines—all in a format tailored to individual workflows.

---

## 2. Target Users

- Individuals seeking clarity and purpose  
- Users building or maintaining habits  
- Goal-setters and self-improvement enthusiasts  
- People managing routines, priorities, or mental wellness practices

---

## 3. Core Features (MVP)

### A. Focus Pages

- Each **Focus Page** is a scrollable view composed of multiple **Sections**.
- Users can:
  - Create new pages (either from scratch, from a template, or by duplicating an existing one)
  - Swipe left or right to move between pages
  - **Delete** pages or **insert new pages before/after** the current one
  - **Rearranging pages is not supported** in MVP

### B. Sections & Items

Each section can contain one or more **Item Types**, fully configurable by the user.

**Supported Item Types**:
- Text box  
- Checkbox list  
- Count up / down  
- Counter with goal  
- Streak tracker  
- Horizontal text list (HStack-style)  
- Timeline (start and end dates)  
- Label with icon + text  
- Image  
- Quote  
- Tally tracker  
- Best-so-far (e.g., highest number tracked)  
- Recurring scheduled task (weekdays, hours, months)

### C. User Interaction

- **Swipe left/right**: Navigate between Focus Pages
- **Navigation bar actions**:
  - Add Section
  - Add Item
  - Toggle Edit Mode (reorder items within sections, delete items/sections)
- **Tap** to toggle or edit
- **Long-press/contextual actions**:
  - Edit
  - Deprioritize (moves item to bottom section)

---

## 4. Initial Focus Page Template (Default)

This default template is used for new users or when starting from a template:

### Section 1: *What am I inspired by*
- Bullet list

### Section 2: *Who do I need to become to make my dreams a reality?*
- Bullet list

### Section 3: *What am I trying to accomplish*
- Bullet list

### Section 4: *How am I going to do this?*
- VStack per item, each with:
  - **Title** (single-line)
  - **Description** (multi-line)
- Functions like a table of strategies or action plans

### Section 5: *Schedule*
- Horizontal layout with:
  - **Time label** (e.g., “5:00 PM”)
  - **Text description** (e.g., “Work on outline”)

### Section 6: *Things that used to matter*
- Items moved here after being deprioritized
- Always appears at the bottom
- Items are editable or restorable

---

## 5. Widget Support

- Home screen widget displays:
  - Daily schedule item
  - Current streak or goal progress
  - Quick add or toggle for checklist items
- Tap opens the app directly to the linked page

---

## 6. Export & Backup

- **Export** any page (or all) as plain text (UTF-8 format)
- Content is structured by section
- **iCloud Sync**: Full support for iCloud backup and restore of user data

---

## 7. Non-Functional Requirements

- **Performance**: Fast launch (<2s), smooth interaction with 50+ pages
- **Offline-first**: No login required; works fully offline
- **Data Privacy**: Stored locally with iCloud option for sync
- **Accessibility**: Dynamic Type and VoiceOver support

---

## 8. Future Considerations (Post-MVP)

- **Rearranging Pages** via master list or drag-and-drop
- **Themes & Styling** for pages or sections:
  - Color
  - Monochrome
  - Bold
  - Soft
- Tag filtering across pages  
- Templates library with sharing  
- Statistics dashboard (streaks, focus history)  
- Reminder notifications  
- Voice input / dictation  
- Collaboration or sharing options
