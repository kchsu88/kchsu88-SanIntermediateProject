.class Lccsancom/google/gson/internal/bind/TypeAdapters$24;
.super Lccsancom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/TypeAdapter<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Lccsancom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lccsancom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0, p1}, Lccsancom/google/gson/internal/bind/TypeAdapters$24;->read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public read(Lccsancom/google/gson/stream/JsonReader;)Ljava/util/UUID;
    .locals 2
    .param p1, "in"    # Lccsancom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->peek()Lccsancom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextNull()V

    .line 548
    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lccsancom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/gson/internal/bind/TypeAdapters$24;->write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V

    return-void
.end method

.method public write(Lccsancom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V
    .locals 1
    .param p1, "out"    # Lccsancom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lccsancom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonWriter;

    .line 555
    return-void
.end method
