.class public Lcom/alipay/android/launcher/TitleMenuButton;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "TitleMenuButton.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private c:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/launcher/TitleMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuButton;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuButton;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuButton;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$layout;->launcher_title_search_item:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->launcher_title_search_item_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TitleMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 50
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->launcher_title_search_item_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TitleMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 51
    invoke-static {p1}, Lcom/alipay/android/launcher/TitleMenuButton;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->e:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->d:Ljava/util/ArrayList;

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 73
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TitleMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/TitleMenuButton;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->c:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    .line 74
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->c:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v1, Lcom/alipay/android/launcher/TitleMenuButton$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TitleMenuButton$1;-><init>(Lcom/alipay/android/launcher/TitleMenuButton;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TitleMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43260000    # 166.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/alipay/android/launcher/TitleMenuButton;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v2, Lcom/alipay/android/launcher/TitleMenuButton$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/launcher/TitleMenuButton$2;-><init>(Lcom/alipay/android/launcher/TitleMenuButton;I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 55
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/beans/MenuInfo;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/MenuInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    instance-of v3, v0, Lcom/alipay/android/launcher/TitleMenuItem;

    if-eqz v3, :cond_1

    .line 63
    check-cast v0, Lcom/alipay/android/launcher/TitleMenuItem;

    .line 64
    iget-object v3, p0, Lcom/alipay/android/launcher/TitleMenuButton;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TitleMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v0}, Lcom/alipay/android/launcher/TitleMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    invoke-direct {v3, v4, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TitleMenuButton"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 121
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 125
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/launcher/TitleMenuButton;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/launcher/TitleMenuButton;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->c:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/launcher/TitleMenuButton;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleMenuButton;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/beans/MenuInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v1, "menu_config.json"

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/alipay/android/launcher/TitleMenuButton;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 109
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 110
    const-class v1, Lcom/alipay/android/launcher/beans/MenuInfo;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TitleMenuButton"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onAttachedToWindow()V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    .line 100
    return-void
.end method
