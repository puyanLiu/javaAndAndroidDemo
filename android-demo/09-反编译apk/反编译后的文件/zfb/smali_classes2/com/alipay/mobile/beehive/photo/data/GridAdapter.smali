.class public Lcom/alipay/mobile/beehive/photo/data/GridAdapter;
.super Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter",
        "<",
        "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GridAdapter"


# instance fields
.field public cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

.field private checkable:Z

.field public defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->checkable:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->default_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->checkable:Z

    .line 45
    iput-boolean p3, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->checkable:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->default_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    if-eqz v1, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_0
    return v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 67
    instance-of v0, p2, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    if-eqz v0, :cond_0

    .line 69
    check-cast p2, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 80
    const/4 p1, -0x1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 88
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->checkable:Z

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setCheckable(Z)V

    .line 89
    invoke-virtual {p2, v0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setPhotoInfo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;I)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setGridListener(Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;)V

    .line 91
    return-object p2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    sget v1, Lcom/alipay/mobile/beehive/R$layout;->photo_grid:I

    .line 73
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    goto :goto_1
.end method

.method public setCheckable(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->checkable:Z

    .line 59
    return-void
.end method

.method public setGridListener(Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    .line 63
    return-void
.end method
