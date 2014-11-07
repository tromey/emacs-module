## Multiple Versions of One Module

Because this module system is based on symbol renaming, it isn't
possible to have multiple versions of a module loaded simultaneously.

One possible fix for this would be to have the module hold an obarray,
and intern the new symbols into this obarray.

This would require a bit of extra work for the legacy import feature.

On the other hand, this would prevent ready access to internal symbols
-- which may seem like a feature but tends to inhibit debugging.

Another facet is that this would mean that importing would have to
pass in some kind of version.

One final thought would be that maybe we could add the module version
to the generated symbols.
