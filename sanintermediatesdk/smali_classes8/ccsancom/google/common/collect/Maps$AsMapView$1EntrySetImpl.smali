.class Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;
.super Lccsancom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Maps$AsMapView;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Maps$AsMapView;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Maps$AsMapView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Maps$AsMapView;

    .line 828
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;, "Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/Maps$AsMapView;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 836
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;, "Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/Maps$AsMapView;

    invoke-virtual {v0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/Maps$AsMapView;

    iget-object v1, v1, Lccsancom/google/common/collect/Maps$AsMapView;->function:Lccsancom/google/common/base/Function;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;, "Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/Maps$AsMapView;

    return-object v0
.end method
