.class final Lccsancom/google/common/base/CharMatcher$Ascii;
.super Lccsancom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ascii"
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/base/CharMatcher$Ascii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1276
    new-instance v0, Lccsancom/google/common/base/CharMatcher$Ascii;

    invoke-direct {v0}, Lccsancom/google/common/base/CharMatcher$Ascii;-><init>()V

    sput-object v0, Lccsancom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lccsancom/google/common/base/CharMatcher$Ascii;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1279
    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lccsancom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1280
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1284
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
