.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$15;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v()Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$15;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1532
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$15;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->exitFullScreen()V

    .line 1533
    return-void
.end method
