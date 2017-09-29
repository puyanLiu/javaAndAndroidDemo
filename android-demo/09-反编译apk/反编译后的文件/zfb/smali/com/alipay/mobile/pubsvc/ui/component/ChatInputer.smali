.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
.super Landroid/widget/RelativeLayout;
.source "ChatInputer.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

.field private c:I

.field private d:Ljava/lang/String;

.field irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

.field isClicked:Z

.field iskeyBoardShown:Z

.field mListener:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 36
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 36
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 36
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 59
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->setProcessor(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;)V

    .line 74
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->chat_inputer:I

    invoke-static {p1, v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 77
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->input_more_type:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->sendBtn:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit_container:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    .line 80
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_msg_edit_seprator:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APView;

    .line 82
    new-instance v5, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v5, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v5, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;

    invoke-direct {v5, p0, v0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Lcom/alipay/mobile/commonui/widget/APView;)V

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$drawable;->chat_add_media_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    new-instance v3, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V

    .line 173
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;

    invoke-direct {v1, p0, v4}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 259
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 262
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    return-void
.end method

.method public static findEmojiCutPos(Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 200
    if-nez p0, :cond_1

    .line 201
    const/4 p1, 0x0

    .line 219
    :cond_0
    :goto_0
    return p1

    .line 203
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    .line 207
    :cond_2
    const-string/jumbo v0, "[/emoji]"

    add-int/lit8 v1, p1, -0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 208
    if-eq v0, v2, :cond_0

    .line 211
    const-string/jumbo v1, "[emoji]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 212
    if-eq v1, v2, :cond_0

    .line 216
    sub-int/2addr v0, v1

    const/16 v2, 0x37

    if-gt v0, v2, :cond_0

    .line 219
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 232
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 233
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public closeInputBoard()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 248
    return-void
.end method

.method public getBaseHeight()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getInputEditText()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    .prologue
    .line 237
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getKeyBoardShowState()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    return v0
.end method

.method public hideSwitchButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 223
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input_devider:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ChatInputer"

    const-string/jumbo v2, "remove ImmInputResultReceiver Process"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->removeProcessor()V

    .line 194
    :cond_0
    return-void
.end method

.method public openInputBoard()V
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 253
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 254
    invoke-direct {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V

    .line 255
    return-void
.end method

.method public openKeyBoardWithIrr(Landroid/widget/EditText;)V
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 267
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 268
    return-void
.end method

.method public setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    .line 284
    return-void
.end method

.method public setKeyBoardShowState(Z)V
    .locals 0

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 275
    return-void
.end method

.method public setOnButtonMoreTypeListener(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->mListener:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;

    .line 297
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;

    .line 280
    return-void
.end method
