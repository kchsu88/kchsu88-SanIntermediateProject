.class Lccsancom/google/common/collect/AbstractMultimap$Entries;
.super Lccsancom/google/common/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multimaps$Entries<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMultimap;

    .line 120
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$Entries;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMultimap$Entries;->this$0:Lccsancom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lccsancom/google/common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$Entries;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultimap$Entries;->this$0:Lccsancom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multimap()Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultimap$Entries;, "Lccsancom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultimap$Entries;->this$0:Lccsancom/google/common/collect/AbstractMultimap;

    return-object v0
.end method
