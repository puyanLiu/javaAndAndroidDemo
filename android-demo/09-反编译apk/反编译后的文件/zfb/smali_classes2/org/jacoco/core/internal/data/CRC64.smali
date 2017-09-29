.class public final Lorg/jacoco/core/internal/data/CRC64;
.super Ljava/lang/Object;


# static fields
.field private static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-wide/16 v9, 0x1

    const/16 v8, 0x100

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v8, [J

    sput-object v0, Lorg/jacoco/core/internal/data/CRC64;->a:[J

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_2

    int-to-long v0, v4

    move v2, v3

    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    and-long v5, v0, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_0

    ushr-long/2addr v0, v7

    const-wide/high16 v5, -0x2800000000000000L    # -7.880401239278896E115

    xor-long/2addr v0, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    ushr-long/2addr v0, v7

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/jacoco/core/internal/data/CRC64;->a:[J

    aput-wide v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksum([B)J
    .locals 6

    const-wide/16 v1, 0x0

    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    long-to-int v5, v1

    xor-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    ushr-long/2addr v1, v5

    sget-object v5, Lorg/jacoco/core/internal/data/CRC64;->a:[J

    aget-wide v4, v5, v4

    xor-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
