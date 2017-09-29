.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/widget/CheckBox;

.field private p:Z

.field private q:Z

.field private r:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->i:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->j:Landroid/view/View;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->q:Z

    .line 52
    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 63
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->b:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->b:I

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>(ILjava/lang/Object;)V

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v0, 0x7d1

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->d_()V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "{\"action\":{\"name\":\"/forward/setting\"}}"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-super {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;Z)V
    .locals 6

    .prologue
    .line 32
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_yuan_bi"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v3, "flybird_setting_nopwdcheck_label"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_yuan_ri"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->q:Z

    return v0
.end method

.method private f()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->k:Z

    if-eq v1, v2, :cond_0

    .line 233
    const-string/jumbo v1, "switch_nopwd"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->p:Z

    if-eq v1, v2, :cond_1

    .line 236
    const-string/jumbo v1, "switch_jfb"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 238
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    const-string/jumbo v1, "nopwd_limit_default"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    const-string/jumbo v1, "channel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const-string/jumbo v1, "switch_auto"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 247
    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "setting_activity_main"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_value_item"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->j:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "auto_switch_channel"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_value_text"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->h:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_label"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "no_pwd_check"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "use_jfb_check"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    .line 79
    return-void
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 303
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->e:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    .line 307
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 309
    const-string/jumbo v0, "switch_jfb"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string/jumbo v0, "switch_jfb"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->p:Z

    .line 312
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->p:Z

    if-eqz v0, :cond_a

    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    :cond_1
    :goto_1
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_2
    :goto_2
    const-string/jumbo v0, "nopwd_limit_default"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    const-string/jumbo v0, "nopwd_limit_default"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->i:Ljava/lang/String;

    .line 329
    :cond_3
    const-string/jumbo v0, "spasswordPay"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    const-string/jumbo v0, "spasswordPay"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->q:Z

    .line 332
    :cond_4
    const-string/jumbo v0, "authAction"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "name"

    const-string/jumbo v3, "authAction"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "fpProtocolType"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "fpProtocolType"

    const-string/jumbo v3, "fpProtocolType"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 339
    :cond_5
    const-string/jumbo v0, "nopwd_tips"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    const-string/jumbo v0, "nopwd_tips"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    .line 342
    :cond_6
    const-string/jumbo v0, "nopwd_new_func_open"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    const-string/jumbo v0, "nopwd_new_func_open"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    .line 344
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c(Z)V

    .line 346
    :cond_7
    const-string/jumbo v0, "switch_nopwd"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 347
    const-string/jumbo v0, "switch_nopwd"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->k:Z

    .line 349
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->k:Z

    if-eqz v0, :cond_d

    .line 350
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->i:Ljava/lang/String;

    .line 353
    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    if-eqz v2, :cond_c

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v3, "flybird_yuan_bi"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_3
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v4, "flybird_setting_nopwdcheck_label"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_8
    :goto_4
    const-string/jumbo v0, "nopwd_show"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 369
    const-string/jumbo v0, "nopwd_show"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 371
    if-nez v0, :cond_9

    .line 372
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_check_item"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/f;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "default_channel"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/g;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_value_item"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/h;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/i;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/j;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 322
    :cond_b
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 356
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v3, "flybird_yuan_ri"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 361
    :cond_d
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 364
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 193
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->k:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->o:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->p:Z

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v2, :cond_1

    .line 196
    const-string/jumbo v2, "nativeValidate"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 197
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 198
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->r:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 200
    invoke-super {p0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 207
    :goto_1
    return v0

    .line 203
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->q:Z

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a(ZLcom/alipay/android/app/json/JSONObject;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 207
    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/k;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->i:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->h()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->n:Z

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_yuan_bi"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v3, "flybird_setting_nopwdcheck_label"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_2
    :goto_2
    return-void

    .line 94
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_yuan_ri"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
