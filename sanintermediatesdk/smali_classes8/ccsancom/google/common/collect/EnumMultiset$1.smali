.class Lccsancom/google/common/collect/EnumMultiset$1;
.super Lccsancom/google/common/collect/EnumMultiset$Itr;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/EnumMultiset;->elementIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/EnumMultiset<",
        "TE;>.Itr<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/EnumMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/EnumMultiset;

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$1;, "Lccsancom/google/common/collect/EnumMultiset$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/EnumMultiset$1;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/EnumMultiset$Itr;-><init>(Lccsancom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method output(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$1;, "Lccsancom/google/common/collect/EnumMultiset$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$1;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$000(Lccsancom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method bridge synthetic output(I)Ljava/lang/Object;
    .locals 0

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$1;, "Lccsancom/google/common/collect/EnumMultiset$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/EnumMultiset$1;->output(I)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
