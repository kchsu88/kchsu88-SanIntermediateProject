.class Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field static final INSTANCE:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cs",
            "start",
            "count"
        }
    .end annotation

    .line 183
    const/4 v0, 0x2

    .line 184
    .local v0, "result":I
    move v1, p2

    .local v1, "i":I
    add-int v2, p2, p3

    .local v2, "e":I
    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 185
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    invoke-static {v3}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_0
    return v0
.end method
