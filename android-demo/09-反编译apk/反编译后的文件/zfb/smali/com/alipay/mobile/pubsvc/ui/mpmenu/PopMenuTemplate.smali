.class public Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;
.super Ljava/lang/Object;
.source "PopMenuTemplate.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/view/b;


# static fields
.field public static final STATE_MENU:I = 0x2

.field public static final STATE_STAGE_OPEN:I = 0x0

.field public static final STATE_TEXT_EDIT:I = 0x1


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

.field private d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

.field private g:Landroid/app/Activity;

.field private h:Z

.field private i:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

.field private j:I

.field protected mCurrentKeyBoardHeight:I

.field mListener:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->h:Z

    .line 50
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    .line 313
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mListener:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;

    .line 35
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    new-instance v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    invoke-direct {v1}, Lcom/alipay/publiccore/core/model/account/ButtonObject;-><init>()V

    .line 255
    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    .line 256
    const-string/jumbo v2, "actionType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    .line 257
    const-string/jumbo v2, "actionParam"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "authType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->authType:Ljava/lang/String;

    .line 259
    const-string/jumbo v2, "msgShowType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->msgShowType:Ljava/lang/String;

    .line 260
    const-string/jumbo v2, "minVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->minVersion:Ljava/lang/String;

    .line 261
    const-string/jumbo v2, "maxVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->maxVersion:Ljava/lang/String;

    .line 262
    const-string/jumbo v2, "clientPlatform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->clientPlatform:Ljava/lang/String;

    .line 263
    const-string/jumbo v2, "envMode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->envMode:Ljava/lang/String;

    .line 265
    const-string/jumbo v2, "button"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 267
    const-string/jumbo v2, "button"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 268
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 282
    :cond_0
    return-object v1

    .line 269
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 270
    iget-object v4, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    const-string/jumbo v2, "subButton"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 274
    const-string/jumbo v2, "subButton"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 275
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 276
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 277
    iget-object v4, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 390
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 391
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getKeyBoardShowState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getInputEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->h:Z

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setBottomChangeState(I)V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->openKeyBoardWithIrr(Landroid/widget/EditText;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setSoftInputAdjustResize(Z)V

    return-void
.end method


# virtual methods
.method public clearInputText()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->clearText()V

    .line 217
    return-void
.end method

.method public closeExpandPan()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public closeInputBoard()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    .line 213
    return-void
.end method

.method public dismissPopMenu()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dismissPopMenu()V

    .line 139
    return-void
.end method

.method public getChatStageView()Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    return v0
.end method

.method public getInputBar()Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    return-object v0
.end method

.method public getMenuBar()Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    return-object v0
.end method

.method public hiddenInputBar()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public hiddenMenuBar()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public hideSwitchButton()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->hideSwitchButton()V

    .line 221
    return-void
.end method

.method public inflate(Landroid/app/Activity;I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->g:Landroid/app/Activity;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->template_pop_menu:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->chatpp_mainview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->i:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->pub_svc_chat_inputer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->chatpp_msg_input_line_bottom:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->chatpp_stage_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->popwin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->b:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->conent_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v1, p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mListener:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setOnButtonMoreTypeListener(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->i:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a(Lcom/alipay/mobile/pubsvc/ui/view/b;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "chatpp_state_keyboard_hight"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    if-lez v0, :cond_0

    .line 89
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    .line 90
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getInputEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    return-object v0
.end method

.method public initMenuBar(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->init(Ljava/util/List;ZLandroid/widget/RelativeLayout;)V

    .line 200
    return-void
.end method

.method public initMenuBar(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "canChat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->init(Ljava/util/List;ZLandroid/widget/RelativeLayout;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;-><init>(Landroid/content/Context;Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V

    .line 251
    return-void
.end method

.method public isChatInputShowing()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChatMenuShowing()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopMenuShowing()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->isPopMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTalkChooseMoreShowing()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyBoardHidden()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setKeyBoardShowState(Z)V

    .line 377
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->h:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setBottomChangeState(I)V

    .line 379
    iput-boolean v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->h:Z

    .line 382
    :cond_0
    return-void
.end method

.method public onKeyBoardShown(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    const/16 v0, 0x96

    if-ge p1, v0, :cond_0

    .line 362
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyborad"

    const-string/jumbo v2, "\u5982\u679c\u662f\u5f39\u51fa\u952e\u76d8\u7684\u8bdd\uff0c\u6b63\u5e38\u4e0d\u5e94\u8be5\u4f4e\u4e8e150px\uff0c\u6240\u4ee5\u4e0d\u4e88\u5904\u7406"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 365
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    if-eq v0, p1, :cond_1

    .line 366
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "chatpp_state_keyboard_hight"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/utils/CacheSet;->putInt(Ljava/lang/String;I)V

    .line 368
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->mCurrentKeyBoardHeight:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(I)V

    .line 370
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setBottomChangeState(I)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setKeyBoardShowState(Z)V

    goto :goto_0
.end method

.method public openExpandPan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public declared-synchronized refreshView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->refreshView(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBottomChangeState(I)V
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    if-ne v0, p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 291
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    .line 293
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    packed-switch v0, :pswitch_data_0

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setSoftInputAdjustResize(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->closeExpandPan()V

    goto :goto_0

    .line 296
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->setSoftInputAdjustResize(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->openExpandPan()V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V

    .line 208
    return-void
.end method

.method public setOnChatAppSelectListener(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->f:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setOnChatAppSelectListener(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;)V

    .line 153
    return-void
.end method

.method public setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V

    .line 204
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setPublicId(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setSoftInputAdjustResize(Z)V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PopMenuTempate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " setSoftInputAdjustResize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public showInputBar()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public showMenuBar()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public switchMenuInput(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v3, 0x0

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->isChatMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->isChatInputShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    if-eqz p1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getBaseHeight()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->hiddenInputBar()V

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->showMenuBar()V

    .line 172
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 173
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 174
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v3, v3, v0, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setMenuEnable()V

    .line 181
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getHeight()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->hiddenMenuBar()V

    .line 185
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->showInputBar()V

    .line 186
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 187
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v3, v3, v0, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 191
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->j:I

    goto :goto_0
.end method
