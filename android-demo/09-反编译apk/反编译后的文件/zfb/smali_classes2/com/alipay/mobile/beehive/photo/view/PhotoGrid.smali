.class public Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;
.super Lcom/alipay/mobile/beehive/photo/view/SquareGrid;
.source "PhotoGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size; = null

.field public static final TAG:Ljava/lang/String; = "PhotoGrid"


# instance fields
.field private cameraIv:Landroid/widget/ImageView;

.field private cbSelected:Landroid/widget/CheckBox;

.field private checkable:Z

.field private defaultPhoto:Landroid/graphics/drawable/Drawable;

.field private gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

.field private ivPhoto:Landroid/widget/ImageView;

.field private llCamera:Landroid/view/View;

.field private photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

.field private position:I

.field private rlSelect:Landroid/widget/RelativeLayout;

.field private tvSelection:Landroid/widget/TextView;

.field private videoTimeTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/view/SquareGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->checkable:Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 82
    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    return-object v0
.end method

.method private processVideo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getMediaType()I

    move-result v2

    if-ne v7, v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    sget v2, Lcom/alipay/mobile/beehive/R$drawable;->eye:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getVideoDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 140
    const-class v2, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 142
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/beehive/R$drawable;->default_photo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    sget-object v3, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    new-instance v6, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;

    invoke-direct {v6, p0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    move v0, v7

    .line 163
    :goto_1
    return v0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    sget v2, Lcom/alipay/mobile/beehive/R$drawable;->camera:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public animateSelection()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$2;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;)V

    .line 252
    const-wide/16 v2, 0x3e8

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->rlSelect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 227
    if-eqz v0, :cond_1

    move v0, v1

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->position:I

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;->onGridChecked(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;I)V

    .line 239
    :cond_0
    :goto_2
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->llCamera:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->position:I

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;->onGridClick(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/view/SquareGrid;->onFinishInflate()V

    .line 188
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_cover:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_camera:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->llCamera:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->llCamera:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cb_selected:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cbSelected:Landroid/widget/CheckBox;

    .line 193
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_photo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->rlSelect:Landroid/widget/RelativeLayout;

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->rlSelect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cameraIv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/alipay/mobile/beehive/R$id;->videoTimeTv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    .line 200
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->checkable:Z

    .line 173
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->tvSelection:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    return-void

    .line 181
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void
.end method

.method public setGridListener(Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->gridListener:Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;

    .line 169
    return-void
.end method

.method public setPhotoInfo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;I)V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    if-ne p1, v0, :cond_1

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoGrid"

    const-string/jumbo v2, "skip update grid photo info."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 92
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->position:I

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->updateGrid()V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoGrid"

    const-string/jumbo v2, "take photo grid ignore drawable."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->processVideo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "\u6709photo drawable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "\u6709thumb drawable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/beehive/R$drawable;->default_photo:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v3

    sget-object v4, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->REORDED_SIZE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    .line 120
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->getPhotoSize(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v5

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)V

    goto/16 :goto_0
.end method

.method public updateGrid()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 204
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->llCamera:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->llCamera:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->checkable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    if-nez v0, :cond_4

    move v0, v1

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->rlSelect:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->photoInfo:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->cameraIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->videoTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 203
    goto :goto_0

    :cond_4
    move v0, v2

    .line 209
    goto :goto_1
.end method
