.class Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMapKeySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMapKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm<TK;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 75
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 78
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm<TK;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
