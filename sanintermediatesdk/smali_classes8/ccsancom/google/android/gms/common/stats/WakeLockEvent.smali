.class public final Lccsancom/google/android/gms/common/stats/WakeLockEvent;
.super Lccsancom/google/android/gms/common/stats/StatsEvent;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTimeout:J

.field private final zzfo:J

.field private zzfp:I

.field private final zzfq:Ljava/lang/String;

.field private final zzfr:Ljava/lang/String;

.field private final zzfs:Ljava/lang/String;

.field private final zzft:I

.field private final zzfu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfv:Ljava/lang/String;

.field private final zzfw:J

.field private zzfx:I

.field private final zzfy:Ljava/lang/String;

.field private final zzfz:F

.field private final zzg:I

.field private zzga:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lccsancom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Lccsancom/google/android/gms/common/stats/StatsEvent;-><init>()V

    .line 2
    move v1, p1

    iput v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzg:I

    .line 3
    move-wide v1, p2

    iput-wide v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfo:J

    .line 4
    move v1, p4

    iput v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfp:I

    .line 5
    move-object v1, p5

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfq:Ljava/lang/String;

    .line 6
    move-object v1, p12

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfr:Ljava/lang/String;

    .line 7
    move-object/from16 v1, p17

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfs:Ljava/lang/String;

    .line 8
    move v1, p6

    iput v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzft:I

    .line 9
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzga:J

    .line 10
    move-object v1, p7

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfu:Ljava/util/List;

    .line 11
    move-object v1, p8

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfv:Ljava/lang/String;

    .line 12
    move-wide v1, p9

    iput-wide v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfw:J

    .line 13
    move v1, p11

    iput v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfx:I

    .line 14
    move-object/from16 v1, p13

    iput-object v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfy:Ljava/lang/String;

    .line 15
    move/from16 v1, p14

    iput v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfz:F

    .line 16
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    .line 17
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    .line 18
    const/4 v1, 0x2

    invoke-direct/range {v0 .. v17}, Lccsancom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .line 21
    iget v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfp:I

    return v0
.end method

.method public final getTimeMillis()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfo:J

    return-wide v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 23
    nop

    .line 24
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result p2

    .line 25
    iget v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzg:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v0

    .line 28
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Lccsanandroid/os/Parcel;IJ)V

    .line 29
    nop

    .line 30
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfq:Ljava/lang/String;

    .line 31
    nop

    .line 32
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    nop

    .line 34
    iget v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzft:I

    .line 35
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 36
    nop

    .line 37
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfu:Ljava/util/List;

    .line 38
    nop

    .line 39
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Lccsanandroid/os/Parcel;ILjava/util/List;Z)V

    .line 40
    nop

    .line 41
    iget-wide v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfw:J

    .line 42
    const/16 v3, 0x8

    invoke-static {p1, v3, v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Lccsanandroid/os/Parcel;IJ)V

    .line 43
    nop

    .line 44
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfr:Ljava/lang/String;

    .line 45
    nop

    .line 46
    const/16 v1, 0xa

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    .line 49
    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 50
    nop

    .line 51
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfv:Ljava/lang/String;

    .line 52
    nop

    .line 53
    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    nop

    .line 55
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfy:Ljava/lang/String;

    .line 56
    nop

    .line 57
    const/16 v1, 0xd

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 58
    nop

    .line 59
    iget v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfx:I

    .line 60
    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 61
    nop

    .line 62
    iget v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfz:F

    .line 63
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Lccsanandroid/os/Parcel;IF)V

    .line 64
    nop

    .line 65
    iget-wide v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    .line 66
    const/16 v3, 0x10

    invoke-static {p1, v3, v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Lccsanandroid/os/Parcel;IJ)V

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfs:Ljava/lang/String;

    .line 69
    nop

    .line 70
    const/16 v1, 0x11

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 71
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 72
    return-void
.end method

.method public final zzu()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzga:J

    return-wide v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 10

    .line 73
    nop

    .line 74
    iget-object v0, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfq:Ljava/lang/String;

    .line 75
    nop

    .line 76
    iget v1, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzft:I

    .line 77
    nop

    .line 78
    nop

    .line 79
    iget-object v2, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfu:Ljava/util/List;

    .line 80
    const-string v3, ""

    if-nez v2, :cond_0

    .line 81
    move-object v2, v3

    goto :goto_0

    .line 82
    :cond_0
    nop

    .line 83
    nop

    .line 84
    const-string v4, ","

    invoke-static {v4, v2}, Lccsanandroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 85
    :goto_0
    iget v4, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfx:I

    .line 86
    nop

    .line 87
    nop

    .line 88
    iget-object v5, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfr:Ljava/lang/String;

    .line 89
    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 90
    :cond_1
    nop

    .line 91
    :goto_1
    nop

    .line 92
    nop

    .line 93
    iget-object v6, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfy:Ljava/lang/String;

    .line 94
    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_2

    .line 95
    :cond_2
    nop

    .line 96
    :goto_2
    nop

    .line 97
    iget v7, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfz:F

    .line 98
    nop

    .line 99
    nop

    .line 100
    iget-object v8, p0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;->zzfs:Ljava/lang/String;

    .line 101
    if-nez v8, :cond_3

    goto :goto_3

    .line 102
    :cond_3
    move-object v3, v8

    .line 103
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method
