.class Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field final synthetic this$0:Landroid/support/v7/graphics/ColorCutQuantizer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    iput p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final findSplitPoint()I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v2, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v3, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    invoke-static {v2, v0, v1, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$300([IIII)V

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v1, v4}, Ljava/util/Arrays;->sort([III)V

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    invoke-static {v2, v0, v1, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$300([IIII)V

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->c:I

    div-int/lit8 v4, v0, 0x2

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    if-gt v1, v5, :cond_1

    aget v5, v2, v1

    aget v5, v3, v5

    add-int/2addr v0, v5

    if-lt v0, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    goto :goto_1
.end method

.method final fitBox()V
    .locals 13

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v11, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v12, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    const v3, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    move v4, v2

    move v5, v3

    move v6, v3

    move v7, v3

    move v3, v2

    :goto_0
    iget v8, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    if-gt v0, v8, :cond_6

    aget v8, v11, v0

    aget v9, v12, v8

    add-int/2addr v1, v9

    invoke-static {v8}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(I)I

    move-result v10

    invoke-static {v8}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$100(I)I

    move-result v9

    invoke-static {v8}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$200(I)I

    move-result v8

    if-le v10, v4, :cond_0

    move v4, v10

    :cond_0
    if-ge v10, v7, :cond_1

    move v7, v10

    :cond_1
    if-le v9, v3, :cond_2

    move v3, v9

    :cond_2
    if-ge v9, v6, :cond_3

    move v6, v9

    :cond_3
    if-le v8, v2, :cond_4

    move v2, v8

    :cond_4
    if-ge v8, v5, :cond_5

    move v5, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->d:I

    iput v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->e:I

    iput v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->f:I

    iput v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->g:I

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->h:I

    iput v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->i:I

    iput v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->c:I

    return-void
.end method

.method final getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v5, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v6, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    iget v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    if-gt v0, v7, :cond_0

    aget v7, v5, v0

    aget v8, v6, v7

    add-int/2addr v1, v8

    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v4, v9

    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$100(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$200(I)I

    move-result v7

    mul-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v4

    int-to-float v4, v1

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v2, v2

    int-to-float v4, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v4, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0, v3, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$400(III)I

    move-result v0

    invoke-direct {v4, v0, v1}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    return-object v4
.end method

.method final getColorCount()I
    .locals 2

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final getLongestColorDimension()I
    .locals 4

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->e:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->g:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->f:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->i:I

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->h:I

    sub-int/2addr v2, v3

    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final getVolume()I
    .locals 3

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->e:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->d:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->g:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->i:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->h:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    new-instance v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    iput v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->b:I

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v1
.end method
