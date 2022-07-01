.class public final Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "identity"

.field private static final DEFAULT_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private isEncodingDefault:Z

.field private isUserAgentDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v2, v0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    new-instance v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    const-string v2, "identity"

    invoke-direct {v0, v2}, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "Accept-Encoding"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 115
    .end local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 118
    sget-object v1, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    iput-object v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 119
    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 120
    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    return-void
.end method

.method private copyHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 223
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    goto :goto_0

    .line 225
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private copyIfNecessary()V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 207
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 209
    :cond_0
    return-void
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    if-nez v0, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 199
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;

    .line 146
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v0, :cond_2

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0

    .line 151
    :cond_2
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 152
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 132
    new-instance v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lccsancom/bumptech/glide/load/model/LazyHeaders;
    .locals 2

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 216
    new-instance v0, Lccsancom/bumptech/glide/load/model/LazyHeaders;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;

    .line 176
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    :goto_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 188
    :cond_1
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v0, :cond_2

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    .line 192
    :cond_2
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 166
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/LazyHeaderFactory;)Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0
.end method
