.class Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;

    .line 1733
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;, "Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$1:Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1733
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;, "Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1736
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;, "Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$1:Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lccsancom/google/common/collect/Multimaps$AsMap;

    invoke-static {v0}, Lccsancom/google/common/collect/Multimaps$AsMap;->access$200(Lccsancom/google/common/collect/Multimaps$AsMap;)Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
