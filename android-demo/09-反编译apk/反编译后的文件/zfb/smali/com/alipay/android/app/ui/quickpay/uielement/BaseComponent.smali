.class public abstract Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;
.super Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent$1;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/view/ViewGroup;

.field protected c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->e:Z

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->c:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->g:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->h:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->i:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->r:Z

    .line 59
    return-void
.end method

.method private static a(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 309
    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/AlignEnum;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/util/AlignEnum;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent$1;->a:[I

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/AlignEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 343
    const/4 v1, 0x3

    .line 344
    const/16 v0, 0x9

    .line 349
    :goto_0
    if-eqz p1, :cond_0

    .line 353
    :goto_1
    return v0

    .line 316
    :pswitch_0
    const/4 v1, 0x5

    .line 317
    const/16 v0, 0xb

    .line 318
    goto :goto_0

    .line 321
    :pswitch_1
    const/16 v1, 0x30

    .line 322
    const/16 v0, 0xa

    .line 323
    goto :goto_0

    .line 326
    :pswitch_2
    const/16 v1, 0x50

    .line 327
    const/16 v0, 0xc

    .line 328
    goto :goto_0

    .line 331
    :pswitch_3
    const/4 v1, 0x1

    .line 332
    const/16 v0, 0xe

    .line 333
    goto :goto_0

    .line 336
    :pswitch_4
    const/16 v1, 0x10

    .line 337
    const/16 v0, 0xf

    .line 338
    goto :goto_0

    :cond_0
    move v0, v1

    .line 353
    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 115
    if-nez p0, :cond_0

    move-object v0, v1

    .line 150
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 120
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 122
    if-eqz v5, :cond_2

    .line 123
    array-length v6, v5

    .line 125
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_2

    .line 126
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v5, v4

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 137
    :goto_2
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 139
    :goto_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 145
    :catch_0
    move-exception v0

    goto :goto_3

    .line 134
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v3, v1

    goto :goto_2

    .line 125
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 150
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 11

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a(Landroid/view/View;)V

    .line 183
    :cond_0
    if-eqz v1, :cond_17

    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 185
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_f

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 190
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V

    .line 191
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 196
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "float"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 188
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 176
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "screen"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    new-instance v6, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-direct {v6, v2, v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;-><init>(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->h:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 202
    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "screen_bottom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 203
    new-instance v6, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-direct {v6, v2, v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;-><init>(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 205
    goto :goto_2

    .line 207
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/RelativeLayout;

    invoke-static {v0, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Ljava/lang/String;Z)I

    move-result v7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_6
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_7
    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 210
    goto :goto_2

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_a

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_a
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_c

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_c
    if-eqz v1, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_d
    const/4 v1, -0x1

    if-eq v7, v1, :cond_e

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_e
    const/4 v1, -0x1

    if-eq v8, v1, :cond_7

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 213
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 214
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_14

    .line 215
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 221
    const/4 v8, 0x1

    if-ne v2, v8, :cond_12

    .line 222
    if-eqz p3, :cond_11

    .line 223
    const-string/jumbo v8, "mini_block_single_item"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    :cond_10
    :goto_5
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 214
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 226
    :cond_11
    const-string/jumbo v8, "mini_input_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 229
    :cond_12
    const/4 v8, 0x1

    if-le v2, v8, :cond_10

    .line 230
    if-nez v1, :cond_13

    .line 231
    const-string/jumbo v8, "mini_block_item_top_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 234
    :cond_13
    const-string/jumbo v8, "mini_block_item_normal_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 241
    :cond_14
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->L()V

    .line 254
    :cond_15
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 255
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 257
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 261
    :cond_16
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    return-object v0

    .line 245
    :cond_17
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    .line 246
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_15

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 249
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->n:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Lcom/alipay/android/app/json/JSONObject;)V

    .line 250
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v3, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_18
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->c(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 76
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->d:Ljava/lang/String;

    .line 79
    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->f:Ljava/lang/String;

    .line 82
    :cond_1
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->c:Ljava/lang/String;

    .line 86
    :cond_2
    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->e:Z

    .line 94
    :cond_3
    const-string/jumbo v0, "form_key"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    const-string/jumbo v0, "form_key"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 103
    :cond_4
    const-string/jumbo v0, "css"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string/jumbo v0, "css"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 112
    :cond_5
    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract d()I
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a()V

    .line 399
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 402
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->dispose()V

    goto :goto_0

    .line 404
    :cond_1
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    .line 405
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    .line 406
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_2

    .line 407
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    .line 409
    :cond_2
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->g:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->h:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->i:Ljava/util/List;

    return-object v0
.end method

.method public final j()Landroid/view/View;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
