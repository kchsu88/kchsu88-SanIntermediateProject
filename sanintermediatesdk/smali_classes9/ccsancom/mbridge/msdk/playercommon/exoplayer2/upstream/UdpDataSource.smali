.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEAFULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private final socketTimeoutMillis:I

.field private uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;",
            ">;)V"
        }
    .end annotation

    .line 72
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;",
            ">;I)V"
        }
    .end annotation

    .line 80
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;",
            ">;II)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 92
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    .line 93
    new-array p1, p2, [B

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    .line 94
    new-instance p3, Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 95
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->uri:Lccsanandroid/net/Uri;

    .line 164
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 170
    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 172
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 174
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 176
    :cond_1
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 177
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 179
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 180
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 185
    :cond_2
    return-void
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->uri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->uri:Lccsanandroid/net/Uri;

    .line 100
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPort()I

    move-result v1

    .line 104
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 105
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 108
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    nop

    .line 118
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    nop

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 127
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 119
    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 113
    :catch_1
    move-exception p1

    .line 114
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 132
    if-nez p3, :cond_0

    .line 133
    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_1

    .line 139
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 144
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v1, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 150
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 151
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 153
    return p3
.end method
