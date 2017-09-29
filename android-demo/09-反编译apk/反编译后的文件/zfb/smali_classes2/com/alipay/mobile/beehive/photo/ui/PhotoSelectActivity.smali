.class public Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;
.super Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;
.source "PhotoSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;
.implements Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;",
        "Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;"
    }
.end annotation


# static fields
.field public static final ACTION_PHOTO_ADAPTER_CHANGE:Ljava/lang/String; = "com.alipay.mobile.beehive.photo.ACTION_PHOTO_ADAPTER_CHANGE"

.field public static final GRID_WIDTH:I = 0x3c

.field private static final PERMISSIONS_REQUEST_CAMERA:I = 0x3e9

.field public static final REQUEST_CAMERA:I = 0x2bd

.field public static final REQUEST_PREVIEW:I = 0x2be

.field public static final TAG:Ljava/lang/String; = "PhotoSelectActivity"


# instance fields
.field private afterSaveInstanceState:Z

.field private bottomMenuListener:Landroid/view/View$OnClickListener;

.field private btBack:Landroid/widget/ImageView;

.field private btFinish:Landroid/widget/Button;

.field private btOption:Landroid/widget/Button;

.field private bucketAdapter:Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

.field private bucketEmptyTips:Landroid/widget/TextView;

.field private bucketIndex:I

.field private bucktName:Ljava/lang/String;

.field private cameraContext:Ljava/lang/String;

.field private cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

.field private cameraPath:Ljava/lang/String;

.field private contextIndex:Ljava/lang/String;

.field private enableBucket:Z

.field private enableCamera:Z

.field private enableOption:Z

.field private enablePreview:Z

.field private firstVisibleItem:I

.field private flBuckets:Landroid/widget/FrameLayout;

.field private gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

.field private hideTimeRunnable:Ljava/lang/Runnable;

.field private isScanFinished:Z

.field private isSelOrigin:Z

.field private isShowRationale:Z

.field private isVideoContain:Z

.field private ivBucket:Landroid/widget/ImageView;

.field private llBottomMenu:Landroid/widget/LinearLayout;

.field private llBuckets:Landroid/widget/LinearLayout;

.field private lvBuckets:Landroid/widget/ListView;

.field private maxSelect:I

.field private maxSelectMsg:Ljava/lang/String;

.field private minPhotoSize:I

.field private onlyPreviewSelect:Z

.field private optionActive:Z

.field private photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

.field private photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rlBottomBar:Landroid/widget/RelativeLayout;

.field private saveFolder:Ljava/lang/String;

.field private selectBottomMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;"
        }
    .end annotation
.end field

.field private selectGif:Z

.field private selectPhoto:Z

.field private selectedPhotoPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textFinish:Ljava/lang/String;

.field private textPreview:Ljava/lang/String;

.field private textTitle:Ljava/lang/String;

.field private tvAlbum:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;

.field private tvPreview:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;-><init>()V

    .line 176
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    .line 524
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bottomMenuListener:Landroid/view/View$OnClickListener;

    .line 996
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isScanFinished:Z

    .line 1171
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$2;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 71
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Z)V
    .locals 0

    .prologue
    .line 996
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isScanFinished:Z

    return-void
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableBucket:Z

    return v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onBucketSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    return-object v0
.end method

.method static synthetic access$15(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketAdapter:Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    return-void
.end method

.method static synthetic access$16(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketAdapter:Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    return-object v0
.end method

.method static synthetic access$18(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->checkBuketEmpty()V

    return-void
.end method

.method static synthetic access$19(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketIndex:I

    return-void
.end method

.method static synthetic access$20(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/GridAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->ivBucket:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    return v0
.end method

.method static synthetic access$24(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->performDeleteSelected()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Lcom/alipay/mobile/beehive/service/PhotoMenu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->showDeleteDialog(Lcom/alipay/mobile/beehive/service/PhotoMenu;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->performSaveSelected()V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleSelectPhoto()V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketUpdate()V

    return-void
.end method

.method private applaySelectedPhotos()V
    .locals 3

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateContent()V

    .line 1029
    :cond_1
    return-void

    .line 1022
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1023
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bucketUpdate()V
    .locals 1

    .prologue
    .line 1253
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$10;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1268
    return-void
.end method

.method private checkBuketEmpty()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketEmptyTips:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketAdapter:Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    return-void

    .line 407
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private checkSelfPermission()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 1070
    :goto_0
    :try_start_0
    const-string/jumbo v3, "android.permission.CAMERA"

    .line 1069
    invoke-static {p0, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 1066
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1069
    goto :goto_1

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoSelectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkSelfPermission exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_1
.end method

.method private getCameraDirPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 808
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "100MEDIA/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object v0

    .line 814
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "100ANDRO/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 818
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "Camera/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 826
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "Camera/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    const-string/jumbo v1, "collect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->bottom_collect_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 514
    :cond_1
    const-string/jumbo v1, "save"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->bottom_save_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_2
    const-string/jumbo v1, "delete"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->bottom_delete_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_3
    const-string/jumbo v1, "share"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->bottom_share_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private handleUserTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1163
    if-nez v0, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1165
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1166
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->hideTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private initBottomMenu()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectBottomMenu:Ljava/util/List;

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    move v5, v4

    .line 483
    :goto_1
    if-lt v5, v3, :cond_1

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectBottomMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectBottomMenu:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 485
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$layout;->photo_bottom_menu_item:I

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 487
    sget v1, Lcom/alipay/mobile/beehive/R$id;->iv_icon:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 488
    iget-object v2, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 489
    sget v2, Lcom/alipay/mobile/beehive/R$id;->tv_title:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 490
    if-eqz v7, :cond_2

    .line 491
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bottomMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 502
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 503
    const/4 v1, -0x1

    .line 502
    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 505
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 483
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 495
    :cond_2
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v1, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private initPhotoReceiver()V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 416
    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$5;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 437
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    return-void
.end method

.method private initPhotoResolver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableBucket:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;-><init>(Landroid/content/Context;Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->setAllBucketName(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectGif:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->setEnableGif(Z)V

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->minPhotoSize:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->setMinPhotoSize(I)V

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectedPhotoPaths:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->setSelectedPhotoPaths(Ljava/util/Set;)V

    .line 362
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isScanFinished:Z

    .line 363
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initPhotoAndVideo()V

    .line 368
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->initPhotoReceiver()V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBuckets:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onBucketReady()V

    .line 378
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->initPhoto()V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    goto :goto_1

    .line 375
    :cond_3
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableBucket:Z

    goto :goto_1
.end method

.method private onBucketReady()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$4;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method private onBucketSelected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 999
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9009\u4e2d\u4e13\u8f91\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->getBucketList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    .line 1003
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isScanFinished:Z

    if-eqz v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "\u6587\u4ef6\u626b\u63cf\u5b8c\u6210\uff0c\u66f4\u65b0\u5df2\u9009\u4e2d\u7167\u7247"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->applaySelectedPhotos()V

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableCamera:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 1011
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->setData(Ljava/util/List;)V

    .line 1012
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$9;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void

    .line 1009
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSelected()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->sendSelectedPhoto()V

    .line 713
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleFinish()V

    .line 714
    return-void
.end method

.method private onTakePhoto()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 860
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "failed to get camera file"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 866
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoSelectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onTakePhoto from camera "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v2, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-direct {v2, v0, v6}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Ljava/lang/String;Z)V

    .line 871
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoSize(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoOrientation(I)V

    .line 873
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-ne v0, v6, :cond_2

    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onSelected()V

    goto :goto_0

    .line 881
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 882
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraContext:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v1

    .line 884
    iput-object v0, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 885
    iput-object v0, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    .line 886
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectListener:Lcom/alipay/mobile/beehive/service/PhotoSelectListener;

    iput-object v0, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectListener:Lcom/alipay/mobile/beehive/service/PhotoSelectListener;

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 889
    const-string/jumbo v1, "previewPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    const-string/jumbo v1, "photoSelect"

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    const-string/jumbo v1, "maxSelect"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "contextIndex"

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v1, "useOriginPhoto"

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isSelOrigin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 894
    const/16 v1, 0x2be

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private performDeleteSelected()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private performSaveSelected()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 622
    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 631
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    .line 635
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 636
    sget v0, Lcom/alipay/mobile/beehive/R$string;->can_not_save_video:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_2
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 644
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    :cond_1
    return-void

    .line 624
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 625
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 629
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->saveFolder:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->savePhoto(Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 630
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    .line 638
    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/beehive/R$string;->photo_has_saved_to:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->saveFolder:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    sget v4, Lcom/alipay/mobile/beehive/R$string;->folder:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget v0, Lcom/alipay/mobile/beehive/R$string;->save_photo_failed:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v2, v3

    move v1, v0

    goto :goto_1
.end method

.method private preview(I)V
    .locals 3

    .prologue
    .line 922
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 925
    const-string/jumbo v1, "previewPosition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    const-string/jumbo v1, "photoSelect"

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 928
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 929
    const-string/jumbo v1, "useOriginPhoto"

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isSelOrigin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    const-string/jumbo v1, "selectGrid"

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    const/16 v1, 0x2be

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 935
    return-void
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 899
    const/4 v0, 0x0

    .line 901
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 902
    const-string/jumbo v2, "Orientation"

    .line 903
    const/4 v3, 0x1

    .line 902
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 904
    packed-switch v1, :pswitch_data_0

    .line 918
    :goto_0
    :pswitch_0
    return v0

    .line 906
    :pswitch_1
    const/16 v0, 0x5a

    .line 907
    goto :goto_0

    .line 909
    :pswitch_2
    const/16 v0, 0xb4

    .line 910
    goto :goto_0

    .line 912
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 915
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private requestCameraPerm()V
    .locals 3

    .prologue
    .line 1079
    .line 1080
    const-string/jumbo v0, "android.permission.CAMERA"

    .line 1079
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isShowRationale:Z

    .line 1081
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1082
    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    .line 1083
    const/16 v1, 0x3e9

    .line 1081
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1084
    return-void
.end method

.method private showDeleteDialog(Lcom/alipay/mobile/beehive/service/PhotoMenu;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    sget v1, Lcom/alipay/mobile/beehive/R$string;->confirm_delete:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->delete:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    new-instance v3, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;

    invoke-direct {v3, p0, p2, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$7;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Ljava/util/List;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    .line 580
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    sget v1, Lcom/alipay/mobile/beehive/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$8;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$8;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 609
    return-void
.end method

.method private takePhoto()V
    .locals 4

    .prologue
    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getCameraDirPath()Ljava/io/File;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    .line 797
    const-string/jumbo v1, "output"

    .line 798
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 797
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 800
    const/16 v1, 0x2bd

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->startExtActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    sget v0, Lcom/alipay/mobile/beehive/R$string;->no_camera_permission:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private takePhotoWithPermissionCheck()V
    .locals 1

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->checkSelfPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->takePhoto()V

    .line 1063
    :goto_0
    return-void

    .line 1055
    :cond_0
    const-string/jumbo v0, "android.permission.CAMERA"

    .line 1054
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 1057
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->requestCameraPerm()V

    goto :goto_0
.end method

.method private toggleBucketList()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 940
    sget v0, Lcom/alipay/mobile/beehive/R$anim;->fade_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 942
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 943
    sget v0, Lcom/alipay/mobile/beehive/R$anim;->pop_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 953
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 947
    sget v0, Lcom/alipay/mobile/beehive/R$anim;->fade_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 949
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 950
    sget v0, Lcom/alipay/mobile/beehive/R$anim;->pop_down:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private toggleFinish()V
    .locals 4

    .prologue
    .line 717
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toggleFinish "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->finish()V

    .line 719
    return-void
.end method

.method private toggleSelectPhoto()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    .line 723
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateOption()V

    .line 731
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 725
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 726
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    goto :goto_1
.end method

.method private updateContent()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 656
    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 661
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v4, v1

    .line 663
    :goto_1
    if-lt v4, v5, :cond_2

    .line 669
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    if-lez v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    if-lez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    :goto_3
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    if-lez v0, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 675
    if-lez v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textFinish:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 676
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 677
    :goto_5
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableOption:Z

    if-eqz v2, :cond_1

    .line 680
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-nez v2, :cond_8

    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_1
    :goto_6
    return-void

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 665
    if-lez v0, :cond_3

    move v2, v3

    :goto_7
    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 663
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 665
    goto :goto_7

    :cond_4
    move v2, v1

    .line 669
    goto/16 :goto_2

    .line 671
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move v2, v1

    .line 673
    goto :goto_4

    .line 676
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textFinish:Ljava/lang/String;

    goto :goto_5

    .line 683
    :cond_8
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvTitle:Landroid/widget/TextView;

    sget v4, Lcom/alipay/mobile/beehive/R$string;->select_photo_count:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private updateGridStat()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 749
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getFirstVisiblePosition()I

    move-result v3

    .line 750
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getLastVisiblePosition()I

    move-result v4

    .line 751
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-le v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move v2, v3

    .line 752
    :goto_1
    if-le v2, v4, :cond_2

    .line 757
    return-void

    :cond_1
    move v1, v0

    .line 751
    goto :goto_0

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    sub-int v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    .line 754
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setCheckable(Z)V

    .line 755
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->updateGrid()V

    .line 752
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private updateOption()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 734
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-nez v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/beehive/R$string;->select:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 742
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-gt v2, v1, :cond_2

    .line 743
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->setCheckable(Z)V

    .line 744
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateGridStat()V

    .line 745
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateContent()V

    .line 746
    return-void

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    sget v3, Lcom/alipay/mobile/beehive/R$string;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 742
    goto :goto_1
.end method

.method private updateTime()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 1185
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1186
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getModifiedTime()J

    move-result-wide v0

    .line 1187
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "photo modified time not set!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1192
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->getThisMonth()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 1206
    sget v0, Lcom/alipay/mobile/beehive/R$string;->this_month:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1212
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1208
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget v3, Lcom/alipay/mobile/beehive/R$string;->time_pattern:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1209
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1210
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->handleUserTouch(Landroid/view/MotionEvent;)V

    .line 1154
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 760
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->finish()V

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectListener:Lcom/alipay/mobile/beehive/service/PhotoSelectListener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectListener:Lcom/alipay/mobile/beehive/service/PhotoSelectListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/service/PhotoSelectListener;->onSelectCanceled()V

    .line 764
    :cond_0
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x2be

    const/4 v1, -0x1

    .line 835
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 836
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 837
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onTakePhoto()V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 840
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectSent:Z

    .line 841
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleFinish()V

    goto :goto_0

    .line 842
    :cond_2
    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 843
    if-eqz p3, :cond_3

    .line 844
    const-string/jumbo v0, "useOriginPhoto"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isSelOrigin:Z

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 850
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraContext:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraContext:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleBucketList()V

    .line 968
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableOption:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleSelectPhoto()V

    goto :goto_0

    .line 967
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onSelected()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBuckets:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleBucketList()V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 697
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 699
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iput-object v0, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 700
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->preview(I)V

    goto :goto_0

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleFinish()V

    goto :goto_0

    .line 704
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 705
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleSelectPhoto()V

    goto :goto_0

    .line 706
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleBucketList()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "videoCompact"

    const-string/jumbo v5, "version:6"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->requestWindowFeature(I)Z

    .line 183
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->afterSaveInstanceState:Z

    .line 184
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->firstVisibleItem:I

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 188
    if-nez p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->finish()V

    .line 339
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "PhotoSelectActivity"

    const-string/jumbo v5, "initialize photo select with save instance."

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    const-string/jumbo v0, "cameraPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string/jumbo v0, "cameraPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    .line 201
    :cond_2
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_photo_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->setContentView(I)V

    .line 202
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_bottom_menu:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBottomMenu:Landroid/widget/LinearLayout;

    .line 203
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_timetext:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    .line 205
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_buckets:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBuckets:Landroid/widget/LinearLayout;

    .line 206
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_back:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btBack:Landroid/widget/ImageView;

    .line 207
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_finish:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    .line 208
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_bucket:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvAlbum:Landroid/widget/TextView;

    .line 209
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_bucket:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->ivBucket:Landroid/widget/ImageView;

    .line 210
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_preview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    .line 211
    sget v0, Lcom/alipay/mobile/beehive/R$id;->gv_photo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    .line 212
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->rlBottomBar:Landroid/widget/RelativeLayout;

    .line 213
    sget v0, Lcom/alipay/mobile/beehive/R$id;->lv_buckets:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    .line 214
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvTitle:Landroid/widget/TextView;

    .line 215
    sget v0, Lcom/alipay/mobile/beehive/R$id;->fl_buckets:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->flBuckets:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->lvBuckets:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    sget v0, Lcom/alipay/mobile/beehive/R$id;->empty_tips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketEmptyTips:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const-string/jumbo v0, "saveFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->saveFolder:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->saveFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->getDefaultPhotoFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->saveFolder:Ljava/lang/String;

    .line 229
    :cond_3
    const-string/jumbo v0, "PHOTO_SELECT_CONTAIN_VIDEO"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    .line 230
    const-string/jumbo v0, "photoSelect"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    .line 232
    const-string/jumbo v0, "enableCamera"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableCamera:Z

    .line 234
    const-string/jumbo v0, "enablePreview"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enablePreview:Z

    .line 236
    const-string/jumbo v0, "enableBucket"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableBucket:Z

    .line 238
    const-string/jumbo v0, "enableGridOption"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableOption:Z

    .line 240
    const-string/jumbo v0, "previewButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "maxSelect"

    .line 242
    const/16 v4, 0x9

    .line 241
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    .line 243
    const-string/jumbo v0, "onlyPreviewSelect"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onlyPreviewSelect:Z

    .line 245
    const-string/jumbo v0, "maxSelectMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelectMsg:Ljava/lang/String;

    .line 246
    const-string/jumbo v0, "finishText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textFinish:Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "selectBottomMenu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectBottomMenu:Ljava/util/List;

    .line 248
    const-string/jumbo v0, "contextIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "PhotoSelectActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "PhotoSelect context index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "bucketName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    .line 255
    const-string/jumbo v0, "optionActive"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    .line 256
    const-string/jumbo v0, "selectGif"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectGif:Z

    .line 257
    const-string/jumbo v0, "minPhotoSize"

    .line 258
    const/16 v4, 0x2800

    .line 257
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->minPhotoSize:I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_camera"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraContext:Ljava/lang/String;

    .line 262
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableCamera:Z

    if-eqz v0, :cond_4

    .line 263
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    iput-boolean v3, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->takePhoto:Z

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    sget v0, Lcom/alipay/mobile/beehive/R$string;->preview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelectMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    sget v0, Lcom/alipay/mobile/beehive/R$string;->max_message:I

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelectMsg:Ljava/lang/String;

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textFinish:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    sget v0, Lcom/alipay/mobile/beehive/R$string;->send:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textFinish:Ljava/lang/String;

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    sget v0, Lcom/alipay/mobile/beehive/R$string;->all_bucket:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    .line 279
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    if-eqz v0, :cond_8

    .line 281
    sget v0, Lcom/alipay/mobile/beehive/R$string;->all_bucket_with_video:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    .line 284
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->llBuckets:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableBucket:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->textPreview:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvPreview:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enablePreview:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-le v0, v3, :cond_e

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-le v0, v3, :cond_f

    move v0, v3

    .line 291
    :goto_3
    new-instance v4, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v0}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/photo/data/GridAdapter;->setGridListener(Lcom/alipay/mobile/beehive/photo/data/GridAdapter$OnGridListener;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoAdapter:Lcom/alipay/mobile/beehive/photo/data/GridAdapter;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-lez v0, :cond_10

    move v0, v3

    .line 297
    :goto_4
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->rlBottomBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-le v0, v3, :cond_12

    .line 300
    :goto_6
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btFinish:Landroid/widget/Button;

    if-eqz v3, :cond_13

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    .line 306
    const-string/jumbo v0, "selectedPhotoPaths"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_9

    .line 308
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectedPhotoPaths:Ljava/util/Set;

    .line 309
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectedPhotoPaths:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 312
    :cond_9
    sget v0, Lcom/alipay/mobile/beehive/R$string;->all_bucket:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    .line 313
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isVideoContain:Z

    if-eqz v0, :cond_a

    .line 315
    sget v0, Lcom/alipay/mobile/beehive/R$string;->all_bucket_with_video:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    .line 317
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvAlbum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->selectPhoto:Z

    if-nez v0, :cond_b

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->ivBucket:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->btOption:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableOption:Z

    if-eqz v3, :cond_14

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-static {v0, p0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->setOnOverScrolledListener(Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;)V

    .line 331
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->initBottomMenu()V

    .line 332
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    if-eqz v0, :cond_c

    .line 333
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateOption()V

    .line 335
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 336
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->initPhotoResolver()V

    .line 337
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoSelectActivity"

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initPhotoResolver cost time(ms) = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 286
    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 288
    goto/16 :goto_2

    :cond_f
    move v0, v1

    .line 290
    goto/16 :goto_3

    :cond_10
    move v0, v1

    .line 296
    goto/16 :goto_4

    :cond_11
    move v0, v2

    .line 297
    goto/16 :goto_5

    :cond_12
    move v3, v1

    .line 299
    goto/16 :goto_6

    :cond_13
    move v0, v2

    .line 300
    goto/16 :goto_7

    :cond_14
    move v1, v2

    .line 326
    goto :goto_8
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1133
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onDestroy()V

    .line 1134
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1136
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->setBucketListener(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;)V

    .line 1141
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bottomMenuListener:Landroid/view/View$OnClickListener;

    .line 1142
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoResolver:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    .line 1143
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 1145
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->afterSaveInstanceState:Z

    if-nez v0, :cond_2

    .line 1146
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1148
    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 1149
    return-void
.end method

.method public onGridChecked(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1107
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v1

    .line 1108
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->isChecked()Z

    move-result v2

    .line 1109
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 1130
    :cond_1
    :goto_0
    return-void

    .line 1113
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v3, v3, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1114
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 1115
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-lt v3, v1, :cond_3

    .line 1116
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelectMsg:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1118
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->setChecked(Z)V

    goto :goto_0

    .line 1121
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1122
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateContent()V

    goto :goto_0

    .line 1124
    :cond_5
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 1125
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1126
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onGridClick(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1033
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketIndex:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enableCamera:Z

    if-eqz v0, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->takePhotoWithPermissionCheck()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->enablePreview:Z

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 1038
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->preview(I)V

    goto :goto_0

    .line 1039
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->maxSelect:I

    if-ne v0, v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1041
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1042
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onSelected()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 977
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    move v2, v3

    .line 978
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 987
    iput p3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketIndex:I

    .line 988
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucketAdapter:Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->notifyDataSetChanged()V

    .line 990
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvAlbum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toggleBucketList()V

    .line 992
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->bucktName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->onBucketSelected(Ljava/lang/String;)V

    .line 993
    return-void

    .line 979
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    .line 980
    if-ne v2, p3, :cond_1

    .line 981
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->setSelected(Z)V

    .line 978
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->setSelected(Z)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 454
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, "previewPosition"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 459
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getLastVisiblePosition()I

    move-result v2

    .line 462
    if-eq v0, v3, :cond_1

    if-gt v0, v2, :cond_0

    if-ge v0, v1, :cond_1

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->setSelection(I)V

    .line 466
    :cond_1
    if-nez v0, :cond_2

    .line 467
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "no need to indicate current position."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    new-instance v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;I)V

    .line 478
    const-wide/16 v3, 0x190

    .line 470
    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onOverScrolled(II)V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateTime()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 1089
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1090
    array-length v0, p3

    if-lez v0, :cond_1

    .line 1091
    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 1092
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->takePhoto()V

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "user denie the PERMISSION_CAMERA"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v0, "android.permission.CAMERA"

    .line 1095
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 1097
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->isShowRationale:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1098
    sget v0, Lcom/alipay/mobile/beehive/R$string;->permisson_rationale:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 650
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onResume()V

    .line 651
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateContent()V

    .line 652
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateGridStat()V

    .line 653
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 442
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSaveInstanceState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->afterSaveInstanceState:Z

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 445
    const-string/jumbo v0, "previewPosition"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->gvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string/jumbo v0, "contextIndex"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string/jumbo v0, "optionActive"

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->optionActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    const-string/jumbo v0, "cameraPath"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->contextIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 1229
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScroll "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->firstVisibleItem:I

    if-ne v0, p2, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1234
    :cond_0
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->firstVisibleItem:I

    .line 1235
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->updateTime()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 1218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollStateChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
