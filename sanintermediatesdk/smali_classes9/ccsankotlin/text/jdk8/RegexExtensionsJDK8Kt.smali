.class public final Lccsankotlin/text/jdk8/RegexExtensionsJDK8Kt;
.super Ljava/lang/Object;
.source "RegexExtensions.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "get",
        "Lccsankotlin/text/MatchGroup;",
        "Lccsankotlin/text/MatchGroupCollection;",
        "name",
        "",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    pn = "kotlin.text"
.end annotation


# direct methods
.method public static final get(Lccsankotlin/text/MatchGroupCollection;Ljava/lang/String;)Lccsankotlin/text/MatchGroup;
    .locals 2
    .param p0, "$this$get"    # Lccsankotlin/text/MatchGroupCollection;
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "$this$get"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p0, Lccsankotlin/text/MatchNamedGroupCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lccsankotlin/text/MatchNamedGroupCollection;

    if-eqz v0, :cond_1

    .line 34
    .local v0, "namedGroups":Lccsankotlin/text/MatchNamedGroupCollection;
    invoke-interface {v0, p1}, Lccsankotlin/text/MatchNamedGroupCollection;->get(Ljava/lang/String;)Lccsankotlin/text/MatchGroup;

    move-result-object v1

    return-object v1

    .line 32
    .end local v0    # "namedGroups":Lccsankotlin/text/MatchNamedGroupCollection;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Retrieving groups by name is not supported on this platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
