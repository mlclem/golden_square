
  ┌──────────────────────────┐        ┌─────────────────┐
  │   Experiences class      │        │ Contacts class  │
  │                │         │        │                 │
  │    initialize  │         │        │  initialize   │ │
  └────────────────┼─────────┘        └───────────────┼─┘
                   │                                  │
┌──────────────────┴────────────┐                     │
│  Diary class     ▼            │   ┌─────────────────┴──────┐
│                               │   │Phonebook class  ▼      │
│ add experiences to diary list │   │                        │
│                               │   │Get contact from diary  │
│ return all diary entries     ─┼───┼─►                      │
│                               │   │List all phonenumbers   │
│ wpm calc retrun best diary    │   │                        │
│ entry based on time           │   └────────────────────────┘
└───────────────────────────────┘

     ┌────────────────┐
     │                │
     │  Task class  │ │
     │              │ │
     │  initialize  │ │                                                         
     │              │ │
     └──────────────┼─┘
                    │
  ┌─────────────────┴────────┐
  │ TodoList class  ▼        │
  │                          |
  │ add task to Todo list    │
  │                          │
  │ mark complete            │
  │                          │
  │ return incomplete Todos  │
  │                          │
  └──────────────────────────┘
