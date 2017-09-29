.class public Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final GRID_AUTO_HIDE:I = 0x1770

.field public static final PREFER_WIDTH_THUMB_DP:I = 0x7d

.field public static PREFER_WIDTH_THUMB_PX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PhotoBrowseView"


# instance fields
.field private activity:Landroid/app/Activity;

.field private afterSaveInstanceState:Z

.field private autoHideGrid:Z

.field private bottomBar:Landroid/widget/RelativeLayout;

.field private bottomText:Landroid/view/View;

.field private btDelete:Landroid/widget/Button;

.field private btFinish:Landroid/widget/Button;

.field private cachePreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

.field private cancelShowLastTime:J

.field private cbOrigin:Landroid/widget/CheckBox;

.field private cbSelectTop:Landroid/widget/CheckBox;

.field private cbSelected:Landroid/widget/CheckBox;

.field private clickExit:Z

.field private contextIndex:Ljava/lang/String;

.field private currentPositionOffset:F

.field private defaultFailPhoto:Landroid/graphics/drawable/Drawable;

.field private defaultPhoto:Landroid/graphics/drawable/Drawable;

.field private dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

.field private enableDelete:Z

.field private enableGridGroup:Z

.field private enableScale:Z

.field private enableSelectOrigin:Z

.field private fitSpace:Z

.field private focusedIndexRecord:I

.field private forceFetchOriginalPhoto:Z

.field private forceFullScreenPreview:Z

.field private fullscreenPreview:Z

.field private hideGridRunnable:Ljava/lang/Runnable;

.field private ibBack:Landroid/widget/ImageButton;

.field private ibCancelShow:Landroid/widget/ImageButton;

.field private isAutoPlayPosition:Z

.field private isFromPause:Z

.field private isResumeFromDeleteGroup:Z

.field private isShowPlayFinishHint:Z

.field private itemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ivGridGroup:Landroid/view/View;

.field private lastClickTimestamp:J

.field private lastPagerCount:I

.field private leftText:Ljava/lang/String;

.field private llOrigin:Landroid/view/View;

.field private llSelect:Landroid/view/View;

.field loadListener:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

.field private loadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            "Lcom/alipay/mobile/beehive/photo/data/LoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private maxSelect:I

.field private maxSelectMsg:Ljava/lang/String;

.field private onlyPreviewSelect:Z

.field private optionBar:Landroid/widget/RelativeLayout;

.field private optionBarBack:Landroid/widget/ImageButton;

.field private originalVideoLongClickListener:Landroid/view/View$OnLongClickListener;

.field private pageIndex:I

.field private pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

.field private pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

.field private photoGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;",
            ">;"
        }
    .end annotation
.end field

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

.field private photoLongClickListener:Landroid/view/View$OnLongClickListener;

.field private photoMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;"
        }
    .end annotation
.end field

.field private photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

.field private photoViewDisplayType:I

.field private previewImgHeight:I

.field private previewImgWidth:I

.field private previewPosition:I

.field private purePhoto:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rightText:Ljava/lang/String;

.field private rlShowOrigin:Landroid/widget/RelativeLayout;

.field private saveFolder:Ljava/lang/String;

.field private scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

.field private selectMode:Z

.field private selectPhoto:Z

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private showDotIndicator:Z

.field private showOrigin:Z

.field private showOriginLastClickTime:J

.field private showTextIndicator:Z

.field private textFinish:Ljava/lang/String;

.field private textIndicator:Landroid/widget/TextView;

.field private textOriginPhoto:Ljava/lang/String;

.field private topBar:Landroid/widget/RelativeLayout;

.field private tvLeft:Landroid/widget/TextView;

.field private tvNumberIndex:Landroid/widget/TextView;

.field private tvOrigin:Landroid/widget/TextView;

.field private tvRight:Landroid/widget/TextView;

.field private tvTextDivider:Landroid/widget/TextView;

.field private videoLongClickListener:Landroid/view/View$OnLongClickListener;

.field private viewHeight:I

.field private viewWidth:I

.field private vpPhoto:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 174
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    .line 176
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastPagerCount:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    .line 186
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    .line 742
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    .line 950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastClickTimestamp:J

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    .line 1211
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1314
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1364
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1446
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->videoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1490
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->originalVideoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1691
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    .line 1762
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    .line 1820
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadListener:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    .line 220
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->init(Landroid/content/Context;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    .line 176
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastPagerCount:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    .line 186
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    .line 742
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    .line 950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastClickTimestamp:J

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    .line 1211
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1314
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1364
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1446
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->videoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1490
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->originalVideoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1691
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    .line 1762
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    .line 1820
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadListener:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    .line 215
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->init(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    .line 176
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastPagerCount:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    .line 186
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    .line 742
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    .line 950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastClickTimestamp:J

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    .line 1211
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1314
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1364
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1446
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->videoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1490
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$4;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->originalVideoLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1691
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    .line 1762
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$5;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    .line 1820
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$6;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadListener:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    .line 210
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->init(Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->clickExit:Z

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/util/List;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;
    .locals 1

    .prologue
    .line 1548
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->buildListener(Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/util/List;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 1842
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onLoadProgress_(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1869
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onLoadComplete_(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1907
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onLoadCanceled_(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onLoadFailed_(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->createView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$19(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cachePreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V
    .locals 0

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFullscreen()V

    return-void
.end method

.method static synthetic access$20(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDeleteDialog(Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    return-void
.end method

.method static synthetic access$21(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 0

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->processMenu(Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    return-void
.end method

.method static synthetic access$22(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    return-object v0
.end method

.method static synthetic access$24(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$25(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/view/IndicatorView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    return-void
.end method

.method static synthetic access$27(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoMenuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->scanTask:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    return-object v0
.end method

.method private buildListener(Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/util/List;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;)",
            "Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;"
        }
    .end annotation

    .prologue
    .line 1549
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1569
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "buildListener():mediaType exception!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1555
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/util/List;)V

    goto :goto_0

    .line 1561
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/util/List;)V

    goto :goto_0

    .line 1567
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/util/List;)V

    goto :goto_0

    .line 1549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private canClickCancelShow()Z
    .locals 4

    .prologue
    .line 996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cancelShowLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cancelShowLastTime:J

    .line 998
    const/4 v0, 0x1

    .line 1000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canClickShowOrigin()Z
    .locals 4

    .prologue
    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showOriginLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showOriginLastClickTime:J

    .line 1006
    const/4 v0, 0x1

    .line 1008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelShowOrigin()V
    .locals 3

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->canClickCancelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "cancelShowOrigin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1050
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1051
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoSize()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setOriginText(J)V

    .line 1053
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 1054
    if-nez v0, :cond_1

    .line 1055
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "failed to cancel load!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    .line 1061
    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->cancel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private contralPlay(I)V
    .locals 3

    .prologue
    .line 1220
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    if-eq v0, p1, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1222
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->onLoseFocus()V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1227
    if-nez v0, :cond_1

    .line 1229
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->createView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1230
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isAutoPlayPosition:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->onFocus(Z)V

    .line 1233
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isAutoPlayPosition:Z

    if-eqz v0, :cond_2

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isAutoPlayPosition:Z

    .line 1238
    :cond_2
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1239
    return-void
.end method

.method private createView(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v5, -0x2

    .line 667
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cachePreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 669
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 670
    if-nez v0, :cond_3

    .line 671
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "videoCompact"

    const-string/jumbo v4, "viewPager  no cached View,creat it!"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->photo_preview:I

    const/4 v3, 0x0

    .line 672
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    move-object v2, v0

    :goto_0
    move-object v0, v1

    .line 679
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 680
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v1

    .line 681
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoViewDisplayType:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setDisplayType(I)V

    .line 683
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgWidth:I

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 685
    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 691
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgWidth:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 692
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableScale:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setEnableScale(Z)V

    .line 700
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fitSpace:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setFitSpace(Z)V

    .line 702
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->forceFullScreenPreview:Z

    if-eqz v0, :cond_2

    .line 704
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setDisplayType(I)V

    .line 706
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->setTag(Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 708
    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setLongClickListener(Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 710
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)V

    .line 711
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load photo cost time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-object v2

    .line 675
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoBrowseView"

    const-string/jumbo v4, "use cache photo preview."

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "videoCompact"

    const-string/jumbo v4, "viewPager\u547d\u4e2d\u7f13\u5b58\uff0c\u590d\u7528PhotoPreview"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cachePreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method private getAndSetThumbDrawableCode(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 903
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoBrowseView"

    const-string/jumbo v3, "getAndSetThumbDrawable()"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v1, 0x0

    .line 906
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 908
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoBrowseView"

    const-string/jumbo v3, "set photo view from thumb drawable"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p2, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    .line 910
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v1, v0

    .line 933
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 934
    :goto_1
    if-nez v1, :cond_1

    .line 935
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p2, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->defaultDrawableHashCode:I

    .line 936
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoBrowseView"

    const-string/jumbo v3, "cann`t find thumbnail,show default drawable"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoBrowseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hasThumb:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    return-object v0

    .line 913
    :cond_2
    sget v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->PREFER_WIDTH_THUMB_PX:I

    invoke-static {p1, v2}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->loadThumbPhoto(Lcom/alipay/mobile/beehive/service/PhotoInfo;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 914
    if-eqz v2, :cond_3

    .line 915
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "PhotoBrowseView"

    const-string/jumbo v4, "set photo view from cache image"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0, p2, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setDrawableThumbCode(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/graphics/Bitmap;)V

    move v1, v0

    .line 917
    goto :goto_0

    .line 918
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "PhotoBrowseView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "photo thumb path "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const/4 v2, 0x0

    .line 922
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 926
    :goto_3
    if-eqz v2, :cond_0

    .line 927
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "PhotoBrowseView"

    const-string/jumbo v4, "set photo view from local thumb path"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, p2, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setDrawableThumbCode(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/graphics/Bitmap;)V

    move v1, v0

    .line 929
    goto/16 :goto_0

    .line 923
    :catch_0
    move-exception v3

    .line 924
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "PhotoBrowseView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "decode bitmap exception."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 940
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private getLoadInfo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 1033
    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;-><init>()V

    .line 1035
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadListener:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->proxy:Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper$LoadListener;

    .line 1036
    iput-boolean v2, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    .line 1037
    iput-object p1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1038
    iput v2, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    .line 1040
    :cond_0
    iput-object p2, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1041
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->photo_browse:I

    .line 229
    const/4 v2, 0x1

    .line 228
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 230
    iput v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->default_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->defaultPhoto:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->load_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->defaultFailPhoto:Landroid/graphics/drawable/Drawable;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    .line 235
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_grid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_left:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvLeft:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvLeft:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 240
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->llSelect:Landroid/view/View;

    .line 241
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_right:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvRight:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvRight:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 243
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_text_divider:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvTextDivider:Landroid/widget/TextView;

    .line 244
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_bottom_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomText:Landroid/view/View;

    .line 246
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_option_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_text_indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textIndicator:Landroid/widget/TextView;

    .line 251
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_top_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    .line 258
    sget v0, Lcom/alipay/mobile/beehive/R$id;->rl_show_origin:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    sget v0, Lcom/alipay/mobile/beehive/R$id;->pb_show_origin:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->show_origin:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 264
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ib_cancel_show:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_back:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibBack:Landroid/widget/ImageButton;

    .line 268
    sget v0, Lcom/alipay/mobile/beehive/R$id;->option_bt_back:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBarBack:Landroid/widget/ImageButton;

    .line 269
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_index:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvNumberIndex:Landroid/widget/TextView;

    .line 270
    sget v0, Lcom/alipay/mobile/beehive/R$id;->vp_base_app:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    .line 272
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cb_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cb_select_top:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_finish:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btFinish:Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btFinish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cb_origin:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tv_origin:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvOrigin:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 290
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_delete:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btDelete:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btDelete:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 296
    return-void
.end method

.method private initPhotoReceiver(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    const-string/jumbo v1, "com.alipay.mobile.beehive.photo.ACTION_PHOTO_ADAPTER_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$7;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->receiver:Landroid/content/BroadcastReceiver;

    .line 547
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 465
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableGridGroup:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableDelete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showTextIndicator:Z

    if-eqz v0, :cond_b

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomText:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fullscreenPreview:Z

    if-eqz v0, :cond_c

    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fullscreenPreview:Z

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textIndicator:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableDelete:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showTextIndicator:Z

    if-eqz v0, :cond_d

    :cond_2
    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectPhoto:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectPhoto:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDotIndicator:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setVisibility(I)V

    .line 477
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fullscreenPreview:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDotIndicator:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showTextIndicator:Z

    if-nez v0, :cond_11

    :cond_3
    move v0, v4

    .line 478
    :goto_7
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    if-eqz v0, :cond_12

    move v5, v1

    :goto_8
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 479
    if-eqz v0, :cond_4

    .line 480
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableGridGroup:Z

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_4
    sget v0, Lcom/alipay/mobile/beehive/R$id;->ll_origin:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->llOrigin:Landroid/view/View;

    .line 486
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btDelete:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableDelete:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_9
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v5, v5, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_6

    .line 489
    :cond_5
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    .line 491
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onlyPreviewSelect:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-ne v0, v4, :cond_8

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    iget v6, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    .line 499
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvNumberIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updateContent()V

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setCount(I)V

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setSelection(I)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageScrollStateChanged(I)V

    .line 511
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-ne v0, v4, :cond_9

    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->llSelect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 465
    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 466
    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 467
    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 472
    goto/16 :goto_3

    :cond_e
    move v0, v3

    .line 473
    goto/16 :goto_4

    :cond_f
    move v0, v3

    .line 474
    goto/16 :goto_5

    :cond_10
    move v0, v3

    .line 475
    goto/16 :goto_6

    :cond_11
    move v0, v1

    .line 477
    goto/16 :goto_7

    :cond_12
    move v5, v3

    .line 478
    goto/16 :goto_8

    :cond_13
    move v0, v3

    .line 486
    goto/16 :goto_9
.end method

.method private loadPhoto(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, -0x1

    .line 811
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "loadPhoto"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 813
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    .line 815
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    invoke-virtual {p2, v10}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->changeViewType(I)V

    .line 821
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setActivity(Landroid/app/Activity;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->loadVideoInfo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->fetchThumbnail()V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->loadVideoInfo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 827
    invoke-virtual {p2, v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->changeViewType(I)V

    .line 828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "invalid photo path."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 834
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoBrowseView"

    const-string/jumbo v3, "set photo view from photo info"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->forceFetchOriginalPhoto:Z

    invoke-direct {p0, v0, v2, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setOriOrBigFromMem(Landroid/widget/ImageView;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 842
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getAndSetThumbDrawableCode(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 843
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getLoadInfo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    move-result-object v5

    .line 844
    iget-boolean v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoMark()Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->hasOriginPhoto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 846
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "PhotoBrowseView"

    .line 847
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "set photo view from origin photo,imageView scaleType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 846
    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 848
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/mobile/beehive/photo/data/LoadInfo;)V

    goto/16 :goto_0

    .line 852
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "PhotoBrowseView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loadPhoto isLoading "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-boolean v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    if-eqz v4, :cond_5

    .line 854
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "photo is loading!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    :cond_5
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 859
    iget-boolean v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->forceFetchOriginalPhoto:Z

    if-eqz v4, :cond_7

    .line 860
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "PhotoBrowseView"

    .line 861
    const-string/jumbo v7, "no local original photo,but set forcefetch original ,set photo view from origin photo"

    .line 860
    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "PhotoBrowseView"

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "placed drawable width:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 864
    const-string/jumbo v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 865
    const-string/jumbo v8, ",rect width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 866
    const-string/jumbo v8, ",rect height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 863
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 862
    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    if-eqz v5, :cond_6

    .line 869
    iput-boolean v10, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loadingOrigin:Z

    .line 870
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v4, v6}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbHeight:I

    .line 871
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v4, v6}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbWidth:I

    :cond_6
    move v4, v3

    .line 873
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/mobile/beehive/photo/data/LoadInfo;)V

    goto/16 :goto_0

    .line 877
    :cond_7
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getLargePhotoWidth()I

    move-result v3

    .line 878
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getLargePhotoHeight()I

    move-result v4

    .line 879
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/mobile/beehive/photo/data/LoadInfo;)V

    goto/16 :goto_0
.end method

.method private onLoadCanceled_(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1908
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onLoadFailed_(Ljava/lang/String;)V

    .line 1909
    return-void
.end method

.method private onLoadComplete_(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1870
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLoadComplete_, path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->removeLoadInfo(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    move-result-object v3

    .line 1872
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    if-nez v0, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    .line 1876
    iget-object v9, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1877
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1878
    iget-boolean v0, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loadingOrigin:Z

    if-eqz v0, :cond_0

    .line 1879
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rect width:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ",rect height:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1881
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1879
    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    .line 1884
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    .line 1885
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1886
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPhotoRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1891
    :goto_1
    iget v4, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbWidth:I

    if-lez v4, :cond_2

    iget v4, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbHeight:I

    if-lez v4, :cond_2

    .line 1892
    cmpl-float v4, v0, v8

    if-lez v4, :cond_2

    cmpl-float v4, v1, v8

    if-lez v4, :cond_2

    .line 1893
    iget v4, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbWidth:I

    int-to-float v4, v4

    div-float v1, v4, v1

    .line 1894
    iget v3, v3, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->thumbHeight:I

    int-to-float v3, v3

    div-float v0, v3, v0

    .line 1895
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1896
    cmpg-float v0, v1, v2

    if-gez v0, :cond_2

    .line 1897
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1899
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1900
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1903
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onOriginLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1888
    :cond_3
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 1889
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method private onLoadFailed_(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1912
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLoadFailed_ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->removeLoadInfo(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    move-result-object v0

    .line 1914
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    if-nez v1, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1918
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1919
    iget-object v2, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoPreview:Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1920
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getFail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1921
    if-eqz v0, :cond_3

    .line 1922
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->failDrawableHashCode:I

    .line 1923
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1930
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1931
    if-ne v0, v1, :cond_2

    .line 1932
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1933
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/beehive/R$string;->download_fail:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1932
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1935
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1925
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/beehive/R$drawable;->load_fail:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1926
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->failDrawableHashCode:I

    .line 1927
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private onLoadProgress_(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1844
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 1845
    if-nez v1, :cond_0

    .line 1846
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "loadInfo not found"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    :goto_0
    return-void

    .line 1850
    :cond_0
    iget-boolean v2, v1, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loadingOrigin:Z

    if-nez v2, :cond_1

    .line 1851
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "not load origin image"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1855
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loading:Z

    .line 1856
    div-int/lit8 v2, p3, 0x64

    div-int v2, p2, v2

    .line 1858
    iput v2, v1, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    .line 1859
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "PhotoBrowseView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onLoadProgress "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    .line 1862
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1863
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "progress ui no need to updated."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1866
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    goto :goto_0
.end method

.method private onOriginLoad(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1785
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->finished:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 1789
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->postAutoHideGrid()V

    .line 1792
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$10;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$10;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    .line 1798
    const-wide/16 v2, 0x1f4

    .line 1792
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private performShowOrigin()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 1012
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->canClickShowOrigin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1016
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1017
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    .line 1019
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getLoadInfo(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    move-result-object v5

    .line 1021
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loadingOrigin:Z

    .line 1022
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    move-result-object v2

    iget v4, v5, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 1024
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/mobile/beehive/photo/data/LoadInfo;)V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cancelShowOrigin()V

    goto :goto_0
.end method

.method private postAutoHideGrid()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1120
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->autoHideGrid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableGridGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1121
    :goto_0
    if-nez v0, :cond_1

    .line 1126
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1120
    goto :goto_0

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private processMenu(Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 4

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1600
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoLongPressMenuClick(Landroid/app/Activity;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/beehive/service/PhotoMenu;)Z

    move-result v1

    .line 1602
    if-eqz v1, :cond_1

    .line 1603
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "press listener processed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    iget-boolean v1, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    if-nez v1, :cond_2

    .line 1608
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "default impl not enabled for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :cond_2
    const-string/jumbo v1, "save"

    iget-object v2, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1613
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1614
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v1

    .line 1615
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveFolder:Ljava/lang/String;

    .line 1616
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 1615
    :goto_1
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->savePhoto(Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    .line 1618
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/alipay/mobile/beehive/R$string;->video_has_saved_to:I

    .line 1619
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/alipay/mobile/beehive/R$string;->save_video_failed:I

    .line 1620
    :goto_3
    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->folder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1622
    :goto_4
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1623
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1616
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1618
    :cond_4
    sget v1, Lcom/alipay/mobile/beehive/R$string;->photo_has_saved_to:I

    goto :goto_2

    .line 1619
    :cond_5
    sget v0, Lcom/alipay/mobile/beehive/R$string;->save_photo_failed:I

    goto :goto_3

    .line 1621
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1624
    :cond_7
    const-string/jumbo v0, "scan_qr"

    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1625
    iget-object v0, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->extra:Ljava/lang/String;

    .line 1626
    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->processQRCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1627
    :cond_8
    const-string/jumbo v0, "delete"

    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->deletePage()V

    goto/16 :goto_0
.end method

.method private removeLoadInfo(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/LoadInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1802
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1817
    :cond_0
    :goto_0
    return-object v0

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1814
    :goto_1
    if-eqz v0, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->photoItem:Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1807
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1808
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    goto :goto_1
.end method

.method private select()V
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1090
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    const-class v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1093
    const-string/jumbo v1, "previewPosition"

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string/jumbo v1, "autoPlayOriginalVideo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1097
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1099
    :cond_0
    return-void
.end method

.method private setDrawableThumbCode(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 945
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    .line 947
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    return-void
.end method

.method private setLongClickListener(Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V
    .locals 2

    .prologue
    .line 722
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 724
    :pswitch_0
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->videoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->originalVideoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setOriOrBigFromMem(Landroid/widget/ImageView;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 883
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 897
    :goto_0
    return v0

    .line 886
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "PhotoBrowseView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ">>>>>>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {p2}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->hasOriginPhoto(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    move v3, v1

    .line 888
    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v0, "original photo "

    .line 889
    :goto_2
    invoke-static {p2, v3}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->loadFromCache(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 890
    if-eqz v3, :cond_3

    .line 891
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "PhotoBrowseView"

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "cache hits,set photo view from mem cache>>>>>>>>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v2

    .line 894
    goto :goto_0

    :cond_1
    move v3, v2

    .line 887
    goto :goto_1

    .line 888
    :cond_2
    const-string/jumbo v0, "big photo "

    goto :goto_2

    .line 896
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoBrowseView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "cache miss !>>>>>>>>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 897
    goto :goto_0
.end method

.method private setOriginText(J)V
    .locals 4

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->show_origin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1266
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;-><init>()V

    .line 1267
    long-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 1270
    return-void
.end method

.method private showDeleteDialog(Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 4

    .prologue
    .line 1066
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1067
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->confirm_delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1068
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/beehive/R$string;->delete:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    new-instance v3, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    .line 1067
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1078
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$9;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$9;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1086
    return-void
.end method

.method private toggleFullscreen()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 1329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    .line 1330
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->purePhoto:Z

    if-nez v1, :cond_3

    .line 1331
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 1332
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_up:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v1

    .line 1333
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 1336
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_up:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v1

    .line 1337
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1339
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 1340
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_out:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v0

    .line 1341
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1343
    :cond_2
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->purePhoto:Z

    .line 1359
    :goto_0
    return-void

    .line 1345
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 1346
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_down:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    .line 1347
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1349
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 1350
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_down:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    .line 1351
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1353
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 1354
    new-instance v1, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    sget v2, Lcom/alipay/mobile/beehive/R$anim;->slide_in:I

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 1357
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->purePhoto:Z

    goto :goto_0
.end method

.method private unregisterReceiver(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 554
    :cond_0
    return-void
.end method

.method private updatePhotoText(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1672
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->leftText:Ljava/lang/String;

    .line 1673
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getRightText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rightText:Ljava/lang/String;

    .line 1674
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->leftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1675
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->bottomText:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->leftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1677
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvTextDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->leftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 1681
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->leftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1683
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 1685
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rightText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    return-void

    :cond_0
    move v0, v2

    .line 1674
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1675
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1676
    goto :goto_2

    :cond_3
    move v0, v3

    .line 1677
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1681
    goto :goto_4

    :cond_5
    move v3, v2

    .line 1685
    goto :goto_5
.end method

.method private updateShowOrigin(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1242
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getLoadOrigin()Z

    move-result v0

    .line 1243
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 1244
    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->hasOriginPhoto(Ljava/lang/String;)Z

    move-result v1

    .line 1245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoBrowseView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateShowOrigin enableOrigin "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " showOrigin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1246
    iget-boolean v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showOrigin:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasOrigin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showOrigin:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 1248
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "hide show origin area."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1262
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 1255
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->loadingOrigin:Z

    if-eqz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pbShowOrigin:Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    move-result-object v1

    iget v0, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->progress:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;

    .line 1257
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1259
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setOriginText(J)V

    .line 1260
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public backPressed()V
    .locals 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 989
    const-string/jumbo v1, "useOriginPhoto"

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 991
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFinish()V

    .line 993
    :cond_0
    return-void
.end method

.method public deleteGroup(I)V
    .locals 6

    .prologue
    .line 1694
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteGroup:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    .line 1697
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    .line 1698
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v2

    .line 1699
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getPhotoInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1700
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1701
    const/4 v0, 0x0

    move v1, v0

    .line 1702
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1711
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 1715
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1716
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->notifyDataSetChanged()V

    .line 1717
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1718
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1719
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setCount(I)V

    .line 1720
    if-nez v0, :cond_5

    .line 1721
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFinish()V

    .line 1737
    :cond_0
    :goto_2
    return-void

    .line 1703
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1704
    if-lt v1, v2, :cond_3

    add-int v5, v2, v3

    if-ge v1, v5, :cond_3

    .line 1705
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1709
    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1706
    :cond_3
    add-int v5, v2, v3

    if-lt v1, v5, :cond_2

    .line 1707
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoGroupIndex(I)V

    goto :goto_3

    .line 1712
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    .line 1713
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->setOffset(I)V

    .line 1711
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1725
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1726
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    .line 1731
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1732
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1733
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-nez v0, :cond_0

    .line 1734
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    goto :goto_2

    .line 1728
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    goto :goto_4
.end method

.method public deletePage()V
    .locals 3

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1741
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1743
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 1744
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->notifyDataSetChanged()V

    .line 1745
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1746
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1747
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setCount(I)V

    .line 1748
    if-nez v0, :cond_1

    .line 1749
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFinish()V

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1753
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-ne v1, v0, :cond_2

    .line 1754
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    .line 1756
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1757
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-nez v0, :cond_0

    .line 1758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    goto :goto_0
.end method

.method public dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 739
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentPagePosition()I
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v0, "selectGrid"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    .line 627
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fullscreenPreview:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDotIndicator:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showTextIndicator:Z

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 628
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 629
    if-eqz v0, :cond_1

    .line 630
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableGridGroup:Z

    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->autoHideGrid:Z

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    :cond_2
    const-string/jumbo v0, "previewPosition"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 640
    if-eq v0, v4, :cond_3

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-ne v0, v2, :cond_6

    .line 650
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 627
    goto :goto_0

    .line 628
    :cond_5
    const/16 v2, 0x8

    goto :goto_1

    .line 645
    :cond_6
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 649
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1634
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1635
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1637
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iput-boolean p2, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->userOriginPhoto:Z

    .line 1640
    if-nez v1, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updateContent()V

    goto :goto_0

    .line 1645
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1646
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v2

    .line 1647
    if-eqz p2, :cond_4

    if-nez v2, :cond_0

    :cond_4
    if-nez p2, :cond_5

    if-eqz v2, :cond_0

    .line 1652
    :cond_5
    if-eqz p2, :cond_7

    if-nez v2, :cond_7

    .line 1653
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-lt v1, v2, :cond_6

    .line 1654
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1655
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelectMsg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1656
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1659
    :cond_6
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1660
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1667
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updateContent()V

    goto :goto_0

    .line 1663
    :cond_7
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 1664
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastClickTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastClickTimestamp:J

    .line 959
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibBack:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->optionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 963
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btFinish:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 965
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 966
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 967
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 968
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->sendSelectedPhoto()V

    .line 972
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 973
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFinish()V

    goto :goto_0

    .line 974
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->select()V

    goto :goto_0

    .line 976
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btDelete:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 977
    new-instance v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    const/4 v1, 0x0

    const-string/jumbo v2, "delete"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/service/PhotoMenu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDeleteDialog(Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    goto/16 :goto_0

    .line 979
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 980
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->performShowOrigin()V

    goto/16 :goto_0

    .line 981
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ibCancelShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cancelShowOrigin()V

    goto/16 :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1774
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->viewWidth:I

    .line 1775
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->viewHeight:I

    .line 1776
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "photoViewWidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->viewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " photoViewHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->viewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    .line 1780
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoBrowseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageScrollStateChanged "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->autoHideGrid:Z

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->ivGridGroup:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->hideGridRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->rlShowOrigin:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1111
    :goto_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1112
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->postAutoHideGrid()V

    .line 1114
    :cond_1
    return-void

    .line 1110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 1139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPageScrolled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " positionOffset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " positionOffsetPixels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1141
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getCurrentPagePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    if-eqz v0, :cond_1

    .line 1143
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-gez v0, :cond_1

    .line 1149
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    .line 1157
    :cond_1
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->currentPositionOffset:F

    .line 1158
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPageSelected:\n\u9875\u9762\u9009\u4e2d index \uff1d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1169
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 1170
    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->onShow()V

    .line 1174
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->isVideo()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableSelectOrigin:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1175
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->llOrigin:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v1

    .line 1177
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelected:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1178
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbSelectTop:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1179
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updatePhotoText(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V

    .line 1180
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updateShowOrigin(Lcom/alipay/mobile/beehive/photo/data/PhotoItem;)V

    .line 1181
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->updateContent()V

    .line 1198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "videoCompact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f13\u5b58\u9875\u9762 count \uff1d "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contralPlay(I)V

    .line 1200
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    if-nez v1, :cond_4

    .line 1202
    const-string/jumbo v1, ""

    move-object v2, v1

    .line 1203
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v1

    sub-int v1, p1, v1

    .line 1204
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v0

    .line 1203
    invoke-interface {v3, v1, v0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;->onPageSelected(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1174
    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    .line 1202
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 557
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "pause"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastPagerCount:I

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->itemMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;

    .line 562
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->onLoseFocus()V

    .line 564
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->focusedIndexRecord:I

    .line 566
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 569
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    const-string/jumbo v2, "resume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    if-eqz v0, :cond_0

    .line 591
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    if-eqz v0, :cond_1

    .line 592
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isResumeFromDeleteGroup:Z

    .line 621
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isFromPause:Z

    .line 622
    :goto_1
    return-void

    .line 594
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->lastPagerCount:I

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->clear()V

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->addPhotos(Ljava/util/List;)V

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->notifyDataSetChanged()V

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setCount(I)V

    .line 601
    if-nez v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->toggleFinish()V

    goto :goto_1

    .line 605
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-lt v1, v0, :cond_3

    .line 607
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 612
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    goto :goto_0

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->vpPhoto:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 617
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 653
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSaveInstanceState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->afterSaveInstanceState:Z

    .line 655
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 656
    const-string/jumbo v0, "previewPosition"

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const-string/jumbo v0, "contextIndex"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 299
    if-eqz p1, :cond_1

    .line 300
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->initPhotoReceiver(Landroid/app/Activity;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->afterSaveInstanceState:Z

    .line 313
    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    .line 314
    sget v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->PREFER_WIDTH_THUMB_PX:I

    if-gtz v0, :cond_0

    .line 315
    const/16 v0, 0x7d

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->PREFER_WIDTH_THUMB_PX:I

    .line 317
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->loadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->afterSaveInstanceState:Z

    if-nez v0, :cond_2

    .line 308
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 310
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->unregisterReceiver(Landroid/app/Activity;)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;

    .line 304
    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/LoadInfo;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->cancel(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    if-eqz p1, :cond_5

    .line 321
    const-string/jumbo v0, "PHOTOVIEW_DISPLAY_TYPE"

    .line 322
    const/4 v1, 0x2

    .line 321
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoViewDisplayType:I

    .line 323
    const-string/jumbo v0, "longClickMenu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoMenuList:Ljava/util/ArrayList;

    .line 324
    const-string/jumbo v0, "photoSelect"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectPhoto:Z

    .line 326
    const-string/jumbo v0, "enableDelete"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableDelete:Z

    .line 328
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->origin_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textOriginPhoto:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "maxSelect"

    .line 330
    const/16 v1, 0x9

    .line 329
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    .line 331
    const-string/jumbo v0, "maxSelectMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelectMsg:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelectMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->max_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelectMsg:Ljava/lang/String;

    .line 335
    :cond_0
    const-string/jumbo v0, "imgW"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgWidth:I

    .line 336
    const-string/jumbo v0, "imgH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewImgHeight:I

    .line 338
    const-string/jumbo v0, "showOrigin"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showOrigin:Z

    .line 340
    const-string/jumbo v0, "autoHideGridGroup"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->autoHideGrid:Z

    .line 342
    const-string/jumbo v0, "fitSpace"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fitSpace:Z

    .line 344
    const-string/jumbo v0, "enablePinch"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableScale:Z

    .line 346
    const-string/jumbo v0, "saveFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveFolder:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->getDefaultPhotoFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveFolder:Ljava/lang/String;

    .line 350
    :cond_1
    const-string/jumbo v0, "previewClickExit"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->clickExit:Z

    .line 352
    const-string/jumbo v0, "enableGridGroup"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableGridGroup:Z

    .line 355
    const-string/jumbo v0, "enableSelectOrigin"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableSelectOrigin:Z

    .line 357
    const-string/jumbo v0, "previewPosition"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    .line 360
    const-string/jumbo v0, "autoPlayOriginalVideo"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->isAutoPlayPosition:Z

    .line 363
    const-string/jumbo v0, "ORIGINAL_VIDEO_EXTRA_INFO_TYPE"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 365
    const-string/jumbo v1, "VIDEO_PLAY_FINISH_HINT"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    const-string/jumbo v2, "DISABLE_AUTO_PLAY_IN_WEAK_NETWORK_EVEN_FILE_EXIST"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 363
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->globalConfig(IZZ)V

    .line 369
    const-string/jumbo v0, "finishText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textFinish:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textFinish:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->send:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textFinish:Ljava/lang/String;

    .line 373
    :cond_2
    const-string/jumbo v0, "fullscreenPreview"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->fullscreenPreview:Z

    .line 376
    const-string/jumbo v0, "showDotIndicator"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showDotIndicator:Z

    .line 378
    const-string/jumbo v0, "showTextIndicator"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->showTextIndicator:Z

    .line 381
    const-string/jumbo v0, "onlyPreviewSelect"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onlyPreviewSelect:Z

    .line 383
    const-string/jumbo v0, "forceFullScreenPreview"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->forceFullScreenPreview:Z

    .line 384
    const-string/jumbo v0, "selectGrid"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectMode:Z

    .line 385
    const-string/jumbo v0, "FORCE_FETCCH_ORIGINAL_PHOTO"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->forceFetchOriginalPhoto:Z

    .line 387
    const-string/jumbo v0, "contextIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 403
    :goto_0
    return-void

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->addPhotos(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pagerAdapter:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$PhotoPagerAdapter;->getPhotoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    .line 398
    const-string/jumbo v0, "useOriginPhoto"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->cbOrigin:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->initViews()V

    goto :goto_0
.end method

.method public setPhotoGroups(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setPhotoGroups(Ljava/util/List;I)V

    .line 407
    return-void
.end method

.method public setPhotoGroups(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setPhotoGroups(Ljava/util/List;ILandroid/os/Bundle;)V

    .line 411
    return-void
.end method

.method public setPhotoGroups(Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    const-string/jumbo v5, "PhotoBrowseView"

    .line 420
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoBrowseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "browsePhoto context index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v7

    move v1, v2

    move v3, v2

    .line 425
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 450
    iput-object v6, v7, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    .line 451
    iget-object v0, v7, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    .line 452
    if-eqz p3, :cond_1

    .line 453
    const-string/jumbo v0, "contextIndex"

    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v0, "previewPosition"

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string/jumbo v0, "VIDEO_PLAY_FINISH_HINT"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    :cond_1
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setBundle(Landroid/os/Bundle;)V

    .line 459
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    if-nez v0, :cond_2

    .line 460
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->onPageSelected(I)V

    .line 462
    :cond_2
    return-void

    .line 426
    :cond_3
    if-ne v1, p2, :cond_4

    .line 427
    iput v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->previewPosition:I

    .line 429
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    .line 430
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->setOffset(I)V

    .line 431
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getPhotoInfoList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 432
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getPhotoInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    .line 436
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getPhotoInfoList()Ljava/util/List;

    move-result-object v8

    move v3, v2

    .line 437
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_6

    move v3, v4

    .line 425
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 438
    :cond_6
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 439
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->setPhotoGroupIndex(I)V

    .line 440
    new-instance v9, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    invoke-direct {v9, v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;-><init>(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 441
    invoke-virtual {v9, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->setPhotoIndex(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 442
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, v7, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->selectedList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method public setPhotoPagerListener(Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoPagerListener:Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    .line 225
    return-void
.end method

.method protected toggleFinish()V
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->enableDelete:Z

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->sendDeletedPhoto()V

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1312
    return-void
.end method

.method protected updateContent()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvNumberIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->dotIndicator:Lcom/alipay/mobile/beehive/photo/view/IndicatorView;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setSelection(I)V

    .line 1278
    const/4 v2, 0x0

    .line 1280
    const-wide/16 v0, 0x0

    .line 1281
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-le v3, v7, :cond_4

    .line 1282
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->selectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    move-wide v8, v0

    move-wide v1, v8

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1293
    :goto_1
    if-lez v3, :cond_5

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-eq v0, v7, :cond_5

    .line 1294
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btFinish:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textFinish:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    :goto_2
    if-gtz v3, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-ne v0, v7, :cond_2

    .line 1301
    :cond_1
    new-instance v0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;-><init>()V

    .line 1302
    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 1303
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvOrigin:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textOriginPhoto:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    :cond_2
    return-void

    .line 1282
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1283
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1284
    add-int/lit8 v3, v3, 0x1

    .line 1285
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoSize()J

    move-result-wide v5

    add-long v0, v1, v5

    move-wide v1, v0

    goto/16 :goto_0

    .line 1288
    :cond_4
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->maxSelect:I

    if-ne v3, v7, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->photoList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1290
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoSize()J

    move-result-wide v0

    move v3, v2

    move-wide v8, v0

    move-wide v1, v8

    goto/16 :goto_1

    .line 1296
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->btFinish:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textFinish:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->tvOrigin:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->textOriginPhoto:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v3, v2

    move-wide v8, v0

    move-wide v1, v8

    goto/16 :goto_1
.end method
