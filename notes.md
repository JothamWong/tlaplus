# TLA Notes

## Random

- Box operator always true
- type `module` to initialize template
- List of enabling condition, list of updates
- Primed variable, has '`', reflects updated variable
- State function (no prime or box)
- State predicate is boolean valued state function
- Invariant Inv of a Spec is a state predicate such that Spec implies Box Inv is a theorem
- A variable v has type T in Spec iff v \in T is an invariant of Spec
- Stuttering steps leaves values unchanged
- tuple types, positional indexed
- record types, named tuples

### Deadlock?

Deadlock in this context means stopped.
Most systems are not expected to stop.
If TLC encounters a stop, it reports it as a deadlock.
To the `.cfg` file, add the line
`CHECK_DEADLOCK FALSE`

### Sus of success

Check that all states are visited.
If a state has 0 visits, it's likely the spec is bugged.

## Using TLA

- Create Spec
- TLA+ Check and debug model with TLC

## Links

https://lamport.azurewebsites.net/tla/tools.html
