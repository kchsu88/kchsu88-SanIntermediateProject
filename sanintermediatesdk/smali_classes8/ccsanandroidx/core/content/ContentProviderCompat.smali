.class public final Lccsanandroidx/core/content/ContentProviderCompat;
.super Ljava/lang/Object;
.source "ContentProviderCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static requireContext(Lccsanandroid/content/ContentProvider;)Lccsanandroid/content/Context;
    .locals 3
    .param p0, "provider"    # Lccsanandroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lccsanandroid/content/ContentProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "ctx":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find context from the provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
