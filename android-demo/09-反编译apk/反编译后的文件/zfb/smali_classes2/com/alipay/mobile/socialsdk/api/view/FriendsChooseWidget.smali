.class public Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "FriendsChooseWidget.java"


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/socialsdk/api/view/d;

.field private e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;

.field private j:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->m:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->m:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->m:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    .line 69
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 71
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 74
    const/4 v0, 0x5

    sput v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a:I

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->search_friend_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->whole_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->hlv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    .line 81
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->search_bar_inputbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    new-instance v2, Lcom/alipay/mobile/socialsdk/api/view/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/api/view/a;-><init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    new-instance v2, Lcom/alipay/mobile/socialsdk/api/view/b;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/api/view/b;-><init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->setOnDelKeyClickedListener(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;)V

    .line 107
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->f:Landroid/view/View;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 109
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->j:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 111
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/d;-><init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/api/view/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/api/view/c;-><init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g:I

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->c:Landroid/content/Context;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->h:I

    .line 121
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->i:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->i:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;->OnIconSelect(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->a(Lcom/alipay/mobile/socialsdk/api/view/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->a(Lcom/alipay/mobile/socialsdk/api/view/d;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->refreshFriendChooseWidget(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->j:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->m:Z

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    return-object v0
.end method


# virtual methods
.method public getSearchIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->f:Landroid/view/View;

    return-object v0
.end method

.method public getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;

    return-object v0
.end method

.method public refreshFriendChooseWidget(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 136
    if-lez v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    sget v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a:I

    if-ge v1, v0, :cond_1

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->l:I

    if-le v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/d;->a(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->notifyDataSetChanged()V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelection(I)V

    .line 155
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->l:I

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->k:Z

    .line 157
    return-void

    .line 144
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->g:I

    sget v2, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->a:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/d;->a(Ljava/util/List;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d:Lcom/alipay/mobile/socialsdk/api/view/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/d;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public setOnIconSelectListener(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->i:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;

    .line 50
    return-void
.end method
