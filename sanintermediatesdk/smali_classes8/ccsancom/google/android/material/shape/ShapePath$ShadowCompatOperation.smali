.class abstract Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ShadowCompatOperation"
.end annotation


# static fields
.field static final IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 364
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    sput-object v0, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V
.end method

.method public final draw(Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "shadowRenderer"    # Lccsancom/google/android/material/shadow/ShadowRenderer;
    .param p2, "shadowElevation"    # I
    .param p3, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 368
    sget-object v0, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V

    .line 369
    return-void
.end method
