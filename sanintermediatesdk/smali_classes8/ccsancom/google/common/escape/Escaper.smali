.class public abstract Lccsancom/google/common/escape/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lccsancom/google/common/escape/Escaper$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/escape/Escaper$1;-><init>(Lccsancom/google/common/escape/Escaper;)V

    iput-object v0, p0, Lccsancom/google/common/escape/Escaper;->asFunction:Lccsancom/google/common/base/Function;

    .line 60
    return-void
.end method


# virtual methods
.method public final asFunction()Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lccsancom/google/common/escape/Escaper;->asFunction:Lccsancom/google/common/base/Function;

    return-object v0
.end method

.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
