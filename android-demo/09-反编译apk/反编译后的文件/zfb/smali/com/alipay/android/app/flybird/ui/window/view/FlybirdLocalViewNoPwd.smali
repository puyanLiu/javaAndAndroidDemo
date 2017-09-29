.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;


# instance fields
.field private f:Landroid/widget/ListView;

.field private g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

.field private h:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->f:Landroid/widget/ListView;

    .line 21
    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_list"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->f:Landroid/widget/ListView;

    .line 33
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->d:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    const-string/jumbo v2, "text"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->a:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/a;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/flybird/ui/window/view/a;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/b;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/flybird/ui/window/view/b;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;)[I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->h:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "setting_activity_nopwd"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 63
    const-string/jumbo v0, "nopwd_limit"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string/jumbo v0, "nopwd_limit"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    .line 66
    new-array v5, v4, [Ljava/lang/String;

    .line 67
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->h:[I

    move v0, v1

    .line 68
    :goto_1
    if-ge v0, v4, :cond_2

    .line 69
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->h:[I

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v0

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->h:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a([Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->notifyDataSetChanged()V

    .line 76
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string/jumbo v0, "nopwd_limit_default"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->g:Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;

    const-string/jumbo v1, "nopwd_limit_default"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b_()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
