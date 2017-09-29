.class final Landroid/support/v7/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[F

.field final mColors:[I

.field final mFilters:[Landroid/support/v7/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field final mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/ColorCutQuantizer;->b:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroid/support/v7/graphics/Palette$Filter;)V
    .locals 9

    const v8, 0x8000

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->a:[F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    iput-object p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    new-array v5, v8, [I

    iput-object v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3, v7, v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4, v7, v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2, v7, v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v2

    shl-int/lit8 v3, v3, 0xa

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p1, v0

    aget v3, v5, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v8, :cond_3

    aget v3, v5, v2

    if-lez v3, :cond_1

    invoke-static {v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->a:[F

    invoke-static {v3, v4}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->a:[F

    invoke-direct {p0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(I[F)Z

    move-result v3

    if-eqz v3, :cond_1

    aput v1, v5, v2

    :cond_1
    aget v3, v5, v2

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v0, [I

    iput-object v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    move v4, v1

    move v3, v1

    :goto_2
    if-ge v4, v8, :cond_4

    aget v2, v5, v4

    if-lez v2, :cond_7

    add-int/lit8 v2, v3, 0x1

    aput v4, v6, v3

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_4
    if-gt v0, p2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    array-length v0, v6

    :goto_4
    if-ge v1, v0, :cond_6

    aget v2, v6, v1

    iget-object v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v4, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(I)I

    move-result v7

    aget v2, v5, v2

    invoke-direct {v4, v7, v2}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v2, Landroid/support/v7/graphics/ColorCutQuantizer;->b:Ljava/util/Comparator;

    invoke-direct {v0, p2, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v2, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-static {v0, p2}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(Ljava/util/PriorityQueue;I)V

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_6
    return-void

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method private static a(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    and-int/lit8 v2, p0, 0x1f

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(III)I

    move-result v0

    return v0
.end method

.method private static a(III)I
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x5

    invoke-static {p0, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v0

    invoke-static {p1, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v1

    invoke-static {p2, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->b(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(I[F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Ljava/util/PriorityQueue;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I[F)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2}, Landroid/support/v7/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static synthetic access$300([IIII)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :goto_0
    :pswitch_1
    if-gt p2, p3, :cond_0

    aget v0, p0, p2

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0xa

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :goto_1
    :pswitch_2
    if-gt p2, p3, :cond_0

    aget v0, p0, p2

    and-int/lit8 v1, v0, 0x1f

    shl-int/lit8 v1, v1, 0xa

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$400(III)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/v7/graphics/ColorCutQuantizer;->a(III)I

    move-result v0

    return v0
.end method

.method private static b(III)I
    .locals 2

    if-le p2, p1, :cond_0

    sub-int v0, p2, p1

    shl-int v0, p0, v0

    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0

    :cond_0
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    goto :goto_0
.end method


# virtual methods
.method final getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
