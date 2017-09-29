.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v7/graphics/Palette$Generator;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->c:I

    const/16 v0, 0xc0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->access$000()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final clearFilters()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public final generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroid/support/v7/graphics/Palette;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;-><init>(Landroid/support/v7/graphics/Palette$Builder;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Builder;->b:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final generate()Landroid/support/v7/graphics/Palette;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/graphics/Palette$Builder;->d:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum dimension size for resizing should should be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v7/graphics/Palette$Builder;->d:I

    invoke-static {v0, v1}, Landroid/support/v7/graphics/Palette;->access$100(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v3, Landroid/support/v7/graphics/ColorCutQuantizer;

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->c:I

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v8

    :goto_0
    invoke-direct {v3, v1, v4, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->b:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->f:Landroid/support/v7/graphics/Palette$Generator;

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v7/graphics/DefaultGenerator;

    invoke-direct {v1}, Landroid/support/v7/graphics/DefaultGenerator;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->f:Landroid/support/v7/graphics/Palette$Generator;

    :cond_2
    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->f:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v1, v0}, Landroid/support/v7/graphics/Palette$Generator;->generate(Ljava/util/List;)V

    new-instance v1, Landroid/support/v7/graphics/Palette;

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->f:Landroid/support/v7/graphics/Palette$Generator;

    invoke-direct {v1, v0, v2, v8}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;Landroid/support/v7/graphics/Palette$1;)V

    return-object v1

    :cond_3
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    iget-object v5, p0, Landroid/support/v7/graphics/Palette$Builder;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->a:Ljava/util/List;

    goto :goto_1
.end method

.method final generator(Landroid/support/v7/graphics/Palette$Generator;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->f:Landroid/support/v7/graphics/Palette$Generator;

    return-object p0
.end method

.method public final maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0

    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->c:I

    return-object p0
.end method

.method public final resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0

    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->d:I

    return-object p0
.end method
