.class Lccsancom/google/common/base/Splitter$1$1;
.super Lccsancom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/Splitter$1;->iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/base/Splitter$1;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Splitter$1;Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/base/Splitter$1;
    .param p2, "splitter"    # Lccsancom/google/common/base/Splitter;
    .param p3, "toSplit"    # Ljava/lang/CharSequence;

    .line 145
    iput-object p1, p0, Lccsancom/google/common/base/Splitter$1$1;->this$0:Lccsancom/google/common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lccsancom/google/common/base/Splitter$SplittingIterator;-><init>(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .line 153
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .line 148
    iget-object v0, p0, Lccsancom/google/common/base/Splitter$1$1;->this$0:Lccsancom/google/common/base/Splitter$1;

    iget-object v0, v0, Lccsancom/google/common/base/Splitter$1;->val$separatorMatcher:Lccsancom/google/common/base/CharMatcher;

    iget-object v1, p0, Lccsancom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lccsancom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
