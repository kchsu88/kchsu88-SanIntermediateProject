.class Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$2;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
        "Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$2;->this$0:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I
    .locals 1
    .param p1, "entry"    # Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 154
    check-cast p1, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$2;->getWeight(Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I

    move-result p1

    return p1
.end method

.method public isItalic(Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z
    .locals 1
    .param p1, "entry"    # Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 154
    check-cast p1, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl$2;->isItalic(Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z

    move-result p1

    return p1
.end method
