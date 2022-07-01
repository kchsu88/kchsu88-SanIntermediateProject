.class public final Lccsanokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lccsanokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lccsanokhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanokhttp3/Request;Lccsanokhttp3/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lccsanokhttp3/Request;
    .param p2, "cacheResponse"    # Lccsanokhttp3/Response;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lccsanokhttp3/internal/cache/CacheStrategy;->networkRequest:Lccsanokhttp3/Request;

    .line 59
    iput-object p2, p0, Lccsanokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lccsanokhttp3/Response;

    .line 60
    return-void
.end method

.method public static isCacheable(Lccsanokhttp3/Response;Lccsanokhttp3/Request;)Z
    .locals 3
    .param p0, "response"    # Lccsanokhttp3/Response;
    .param p1, "request"    # Lccsanokhttp3/Request;

    .line 66
    invoke-virtual {p0}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 86
    :sswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lccsanokhttp3/Response;->cacheControl()Lccsanokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lccsanokhttp3/Response;->cacheControl()Lccsanokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lccsanokhttp3/Response;->cacheControl()Lccsanokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    goto :goto_0

    .line 79
    :sswitch_1
    nop

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lccsanokhttp3/Response;->cacheControl()Lccsanokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsanokhttp3/Request;->cacheControl()Lccsanokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 96
    :cond_2
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
