# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date rationale:text
x User -> Devise
x AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
-Block non admin and guest users 
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting 


-refactor posts/_form for admin usere with status
-fix post_spec.rb:54 to have correct user reference and not require update