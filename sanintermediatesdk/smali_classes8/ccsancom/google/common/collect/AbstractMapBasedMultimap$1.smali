.class Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;
.super Lccsancom/google/common/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultimap;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    .line 1171
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$Itr;-><init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1174
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-object p2
.end method
