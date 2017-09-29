.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private e:I

.field private f:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x700

    new-array v0, v3, [B

    sput-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->a:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->a:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->c:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    return-void
.end method

.method private static a(C)B
    .locals 1

    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->a:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 7

    const/16 v1, 0xd

    const/16 v0, 0xc

    const/16 v6, 0x3e

    const/16 v5, 0x3b

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->a(C)B

    move-result v2

    iget-boolean v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->c:Z

    if-eqz v3, :cond_9

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v3, v6, :cond_6

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    :cond_2
    :goto_1
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-eq v3, v6, :cond_5

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    :cond_3
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    :cond_4
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_5
    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iput-char v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    move v0, v1

    goto :goto_0

    :cond_6
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v3, v5, :cond_9

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    :cond_7
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v4, 0x26

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v3, v5, :cond_7

    :cond_8
    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iput-char v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method dirTypeForward()B
    .locals 7

    const/16 v6, 0x3c

    const/16 v0, 0xc

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    invoke-static {v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->a(C)B

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->c:Z

    if-eqz v2, :cond_8

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v2, v6, :cond_6

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    :cond_2
    :goto_1
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    :cond_3
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    :cond_4
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_5
    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iput-char v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v0, 0xd

    goto :goto_0

    :cond_6
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_8

    :cond_7
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->b:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->f:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_7

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    move v0, v1

    move v3, v1

    move v2, v1

    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    if-ge v6, v7, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto :goto_0

    :pswitch_5
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_6
    if-nez v2, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    :goto_2
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_7
    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :pswitch_8
    if-ne v0, v2, :cond_6

    move v4, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v4, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->d:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->e:I

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_2
    if-nez v2, :cond_2

    move v1, v3

    :cond_1
    :goto_1
    return v1

    :cond_2
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_3
    if-ne v0, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_4
    if-nez v2, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_5
    if-ne v0, v2, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
