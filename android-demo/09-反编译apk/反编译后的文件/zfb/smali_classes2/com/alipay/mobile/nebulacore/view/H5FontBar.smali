.class public Lcom/alipay/mobile/nebulacore/view/H5FontBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5FontBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIDE_FONT_BAR:Ljava/lang/String; = "hideFontBar"

.field public static final SHOW_FONT_BAR:Ljava/lang/String; = "showFontBar"

.field public static final TAG:Ljava/lang/String; = "H5FontBar"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/alipay/mobile/h5container/api/H5Page;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 59
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 60
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 64
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    .line 65
    sget v0, Lcom/alipay/mobile/nebulacore/R$layout;->h5_font_bar:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_blank:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_font_size1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_font_size2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_font_size3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_font_size4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_size1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_size2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_size3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_font_size4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const/16 v0, 0x64

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    const-string/jumbo v2, "h5_font_size"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a(I)V

    .line 100
    :cond_1
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 159
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size1_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size2_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size3_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size4_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size1_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size2_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 143
    :cond_2
    const/16 v0, 0x96

    if-ne p1, v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size3_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :cond_3
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size4_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "showFontBar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string/jumbo v2, "hideFontBar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a()V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a()V

    .line 172
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a()V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const/16 v0, 0x4b

    .line 118
    :goto_1
    if-eq v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v2, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v3, "h5PageFontSize"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a(I)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const/16 v0, 0x64

    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const/16 v0, 0x96

    goto :goto_1

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    const/16 v0, 0xc8

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "showFontBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "hideFontBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 164
    return-void
.end method
