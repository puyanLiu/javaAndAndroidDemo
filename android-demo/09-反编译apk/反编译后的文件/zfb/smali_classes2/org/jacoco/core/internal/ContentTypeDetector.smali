.class public Lorg/jacoco/core/internal/ContentTypeDetector;
.super Ljava/lang/Object;


# static fields
.field public static final CLASSFILE:I = -0x35014542

.field public static final GZFILE:I = 0x1f8b0000

.field public static final PACK200FILE:I = -0x35012ff3

.field public static final UNKNOWN:I = -0x1

.field public static final ZIPFILE:I = 0x504b0304


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/high16 v0, 0x1f8b0000

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    :goto_0
    iget-object v1, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    iget-object v1, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->a(Ljava/io/InputStream;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    const/high16 v1, -0x10000

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_1

    :goto_2
    iput v0, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->b:I

    iget-object v0, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    goto :goto_0

    :sswitch_0
    const v0, 0x504b0304

    goto :goto_2

    :sswitch_1
    const v0, -0x35012ff3    # -8349702.5f

    goto :goto_2

    :sswitch_2
    invoke-static {v1}, Lorg/jacoco/core/internal/ContentTypeDetector;->a(Ljava/io/InputStream;)I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v0, -0x35014542    # -8346975.0f

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x35014542 -> :sswitch_2
        -0x35012ff3 -> :sswitch_1
        0x504b0304 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x3002d -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/ContentTypeDetector;->b:I

    return v0
.end method
