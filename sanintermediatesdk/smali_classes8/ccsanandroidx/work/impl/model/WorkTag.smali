.class public Lccsanandroidx/work/impl/model/WorkTag;
.super Ljava/lang/Object;
.source "WorkTag.java"


# instance fields
.field public final tag:Ljava/lang/String;

.field public final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lccsanandroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    .line 55
    return-void
.end method
