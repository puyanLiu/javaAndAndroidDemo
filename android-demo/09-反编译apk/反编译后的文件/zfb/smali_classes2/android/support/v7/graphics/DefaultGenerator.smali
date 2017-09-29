.class Landroid/support/v7/graphics/DefaultGenerator;
.super Landroid/support/v7/graphics/Palette$Generator;


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

.field private b:I

.field private c:Landroid/support/v7/graphics/Palette$Swatch;

.field private d:Landroid/support/v7/graphics/Palette$Swatch;

.field private e:Landroid/support/v7/graphics/Palette$Swatch;

.field private f:Landroid/support/v7/graphics/Palette$Swatch;

.field private g:Landroid/support/v7/graphics/Palette$Swatch;

.field private h:Landroid/support/v7/graphics/Palette$Swatch;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Generator;-><init>()V

    return-void
.end method

.method private static a(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    const/4 v5, 0x2

    aget v5, v2, v5

    cmpl-float v2, v4, p5

    if-ltz v2, :cond_5

    cmpg-float v2, v4, p6

    if-gtz v2, :cond_5

    cmpl-float v2, v5, p2

    if-ltz v2, :cond_5

    cmpg-float v2, v5, p3

    if-gtz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->g:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->d:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->f:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/DefaultGenerator;->h:Landroid/support/v7/graphics/Palette$Swatch;

    if-ne v2, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    iget v7, p0, Landroid/support/v7/graphics/DefaultGenerator;->b:I

    const/4 v8, 0x6

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-static {v4, p4}, Landroid/support/v7/graphics/DefaultGenerator;->a(FF)F

    move-result v4

    aput v4, v8, v9

    const/4 v4, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    aput v9, v8, v4

    const/4 v4, 0x2

    invoke-static {v5, p1}, Landroid/support/v7/graphics/DefaultGenerator;->a(FF)F

    move-result v5

    aput v5, v8, v4

    const/4 v4, 0x3

    const/high16 v5, 0x40c00000    # 6.0f

    aput v5, v8, v4

    const/4 v4, 0x4

    int-to-float v2, v2

    int-to-float v5, v7

    div-float/2addr v2, v5

    aput v2, v8, v4

    const/4 v2, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v8, v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v7, 0x6

    if-ge v2, v7, :cond_2

    aget v7, v8, v2

    add-int/lit8 v9, v2, 0x1

    aget v9, v8, v9

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    add-float/2addr v4, v9

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    div-float v2, v5, v4

    if-eqz v3, :cond_3

    cmpl-float v4, v2, v1

    if-lez v4, :cond_5

    :cond_3
    move-object v1, v0

    move v0, v2

    :goto_3
    move-object v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    return-object v3

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method private static a(Landroid/support/v7/graphics/Palette$Swatch;)[F
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-array v0, v3, [F

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public generate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/graphics/DefaultGenerator;->a:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/graphics/DefaultGenerator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/support/v7/graphics/DefaultGenerator;->b:I

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3f3d70a4    # 0.74f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->g:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3e851eb8    # 0.26f

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->d:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3f3d70a4    # 0.74f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->h:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3e851eb8    # 0.26f

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/DefaultGenerator;->a(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->f:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v7/graphics/DefaultGenerator;->a(Landroid/support/v7/graphics/Palette$Swatch;)[F

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    new-instance v1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v7/graphics/DefaultGenerator;->a(Landroid/support/v7/graphics/Palette$Swatch;)[F

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3e851eb8    # 0.26f

    aput v2, v0, v1

    new-instance v1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    :cond_2
    return-void
.end method

.method public getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->f:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->e:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->h:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->g:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->d:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/DefaultGenerator;->c:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method
