.class public Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/nebulacore/view/TitleProvider;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Z

.field private t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Landroid/widget/RelativeLayout;

.field private y:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 137
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Z

    .line 138
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Z

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->u:Ljava/util/Map;

    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 141
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 144
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setTitleProvider(Lcom/alipay/mobile/nebulacore/view/TitleProvider;)V

    .line 145
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_navigation_bar:I

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    const-string/jumbo v1, "h5_titlebar"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->rl_h5_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_nav_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_nav_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_h5_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->v_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->rl_h5_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Landroid/widget/RelativeLayout;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->ll_h5_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_h5_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_nav_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Landroid/widget/ProgressBar;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_nav_options:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_options:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_dot_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->bt_h5_dot_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->MENU:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Z)V

    .line 186
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Z)V

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    .line 268
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 269
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "case 1, page title ignored!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Z

    if-nez v0, :cond_2

    .line 274
    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Ljava/lang/String;

    .line 276
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_2
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "case 2, page title ignored!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    .line 391
    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->ICON:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    if-ne p1, v2, :cond_0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 399
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    move v2, v1

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void

    .line 393
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->TEXT:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    if-ne p1, v2, :cond_1

    move v2, v0

    move v3, v1

    move v0, v1

    .line 394
    goto :goto_0

    .line 395
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->MENU:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    if-ne p1, v2, :cond_5

    move v2, v1

    move v3, v1

    .line 396
    goto :goto_0

    :cond_2
    move v2, v4

    .line 399
    goto :goto_1

    :cond_3
    move v2, v4

    .line 400
    goto :goto_2

    :cond_4
    move v1, v4

    .line 401
    goto :goto_3

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:Z

    .line 416
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void

    .line 416
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 412
    return-void

    .line 409
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 426
    return-void

    .line 424
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 438
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    if-eqz p1, :cond_3

    move v0, v3

    :goto_2
    or-int/lit8 v0, v0, 0x10

    .line 443
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 446
    if-eqz p1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    move v0, v2

    :goto_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1, v0, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_6

    move v1, v3

    :goto_5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_7

    :goto_6
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 453
    return-void

    :cond_1
    move v0, v1

    .line 438
    goto :goto_0

    :cond_2
    move v0, v1

    .line 439
    goto :goto_1

    :cond_3
    move v0, v4

    .line 442
    goto :goto_2

    .line 446
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    goto :goto_3

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    goto :goto_4

    :cond_6
    move v1, v4

    .line 450
    goto :goto_5

    :cond_7
    move v3, v4

    .line 452
    goto :goto_6
.end method

.method private c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Z)V

    .line 434
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method private d(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Z)V

    .line 457
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 458
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v2, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 292
    const-string/jumbo v6, "showTitlebar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    invoke-direct {p0, v5, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 371
    :cond_0
    :goto_0
    return v5

    .line 294
    :cond_1
    const-string/jumbo v6, "hideTitlebar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 296
    :cond_2
    const-string/jumbo v6, "showOptionMenu"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 297
    invoke-direct {p0, v5, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 298
    :cond_3
    const-string/jumbo v6, "setOptionMenu"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 299
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "reset"

    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->MENU:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "title"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "icon"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "redDot"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "redDot"

    invoke-static {v1, v8, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string/jumbo v8, "color"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;->TEXT:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$OptionType;)V

    :cond_9
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_3
    if-ltz v2, :cond_d

    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_5
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v1, "http"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/util/ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_c
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v8, Lcom/alipay/mobile/nebulacore/web/H5ImageLoader;

    invoke-direct {v8, v7, v1}, Lcom/alipay/mobile/nebulacore/web/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5ImageLoader$ImageListener;)V

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "H5NavigationBar"

    const-string/jumbo v6, "exception detail"

    invoke-static {v1, v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    move v0, v4

    goto :goto_4

    :cond_e
    if-lez v2, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le v2, v0, :cond_f

    const-string/jumbo v0, "\u00b7\u00b7\u00b7"

    :goto_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 300
    :cond_10
    const-string/jumbo v2, "hideOptionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 301
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_0

    .line 302
    :cond_11
    const-string/jumbo v2, "showBackButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 303
    invoke-direct {p0, v5, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_0

    .line 304
    :cond_12
    const-string/jumbo v2, "hideBackButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 305
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_0

    .line 306
    :cond_13
    const-string/jumbo v2, "setTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 307
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fromJS"

    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Z

    :cond_14
    const-string/jumbo v0, "title"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Z

    if-nez v2, :cond_15

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Ljava/lang/String;

    :cond_15
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    const/4 v0, 0x0

    const-string/jumbo v2, "subtitle"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v0, "subtitle"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v3

    :goto_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    move v0, v5

    goto :goto_7

    :cond_1a
    move v3, v4

    goto :goto_8

    .line 308
    :cond_1b
    const-string/jumbo v2, "readTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 310
    const-string/jumbo v0, "readTitle"

    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 309
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->r:Z

    goto/16 :goto_0

    .line 311
    :cond_1c
    const-string/jumbo v2, "showTips"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 314
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "tip_content"

    .line 313
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Tip;->showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_1d
    const-string/jumbo v2, "h5PageShowClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 316
    const-string/jumbo v0, "show"

    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Z)V

    goto/16 :goto_0

    .line 318
    :cond_1e
    const-string/jumbo v1, "setToolbarMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 320
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 321
    :cond_1f
    const-string/jumbo v1, "h5PageSetBackText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 322
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "text"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_20

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_20
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->u:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 323
    :cond_21
    const-string/jumbo v1, "showTitleLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 324
    invoke-direct {p0, v5, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_0

    .line 325
    :cond_22
    const-string/jumbo v1, "hideTitleLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 326
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_0

    .line 327
    :cond_23
    const-string/jumbo v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 329
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "favorites menu has been already existed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_24
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    const-string/jumbo v2, "copy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->menu_favorites:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 337
    const-string/jumbo v6, "favorites"

    .line 338
    sget v7, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_favorites:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v2, v4, v6, v7, v3}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 336
    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;)V

    .line 340
    :cond_25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    const-string/jumbo v2, "shareFriend"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->menu_favorites:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 342
    const-string/jumbo v6, "favorites"

    .line 343
    sget v7, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_favorites:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v4, v6, v1, v3}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 341
    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;)V

    .line 346
    :cond_26
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    :cond_27
    const-string/jumbo v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 352
    :cond_28
    const-string/jumbo v1, "showReportBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "report"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 354
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "report menu has been already existed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_29
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 359
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v6, Lcom/alipay/mobile/nebulacore/R$string;->menu_report:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 360
    const-string/jumbo v7, "report"

    .line 361
    sget v8, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_complain:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 359
    invoke-direct {v4, v6, v7, v0, v3}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 358
    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;)V

    .line 362
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 363
    :cond_2a
    const-string/jumbo v1, "hideReportBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "report"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v1, "report"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2b
    move v5, v3

    .line 369
    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 224
    const-string/jumbo v4, "h5PageReceivedTitle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 263
    :goto_1
    return v0

    .line 226
    :cond_1
    const-string/jumbo v4, "h5PageStarted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Z

    .line 228
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Z

    .line 229
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Z)V

    goto :goto_0

    .line 232
    :cond_2
    const-string/jumbo v4, "h5PageFinished"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    const-string/jumbo v0, "pageUpdated"

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    if-eqz v0, :cond_3

    .line 235
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_4
    const-string/jumbo v4, "setShareChannels"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    if-nez v3, :cond_6

    const/4 v2, 0x0

    .line 243
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v2, "shareFriend"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_6
    const-string/jumbo v2, "channels"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    goto :goto_2

    .line 246
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "appType"

    invoke-static {v2, v3, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v3

    .line 248
    const-string/jumbo v4, "appId"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->isPublicAppId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v3, v5, :cond_0

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v3, "ppchatShare"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 252
    const-string/jumbo v1, "H5NavigationBar"

    const-string/jumbo v2, "Share menu has been already existed, won\'t bother to add more"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v2, "shareFriend"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->menu_share:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    const-string/jumbo v5, "shareFriend"

    .line 259
    sget v6, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_share_friend:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 257
    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const-string/jumbo v0, "h5ToolbarBack"

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const-string/jumbo v0, "h5ToolbarClose"

    goto :goto_1

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    :cond_6
    const-string/jumbo v0, "optionMenu"

    goto :goto_1

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    const-string/jumbo v0, "titleClick"

    goto :goto_1

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    const-string/jumbo v0, "subtitleClick"

    goto :goto_1

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "showTitlebar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "hideTitlebar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "showTitleLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "hideTitleLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "showOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "hideOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "showBackButton"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "hideBackButton"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "setOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v0, "setTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "readTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "setToolbarMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v0, "showTips"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "h5PageShowClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "h5PageSetBackText"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v0, "setShareChannels"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "showFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "hideFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "showReportBtn"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "hideReportBtn"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 286
    return-void
.end method
