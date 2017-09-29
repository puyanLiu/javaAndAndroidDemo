.class public Lcom/alipay/android/app/data/LuaExcuteAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/IDataScriptable;
.implements Lcom/alipay/android/app/script/IDocumentScriptable;
.implements Lcom/alipay/android/app/script/INetworkScriptable;
.implements Lcom/alipay/android/app/script/IPhoneScriptable;
.implements Lcom/alipay/android/app/script/ITidScriptable;
.implements Lcom/alipay/android/app/script/IUpdateScriptable;
.implements Lcom/alipay/android/app/script/IWindowScriptable;


# instance fields
.field private mData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/IDataScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mDoc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/IDocumentScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

.field private mLuaLength:I

.field private mNetwork:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/INetworkScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/IPhoneScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mTid:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/ITidScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/IUpdateScriptable;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/script/IWindowScriptable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaLength:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private initScriptable(Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    .line 163
    :goto_0
    if-eqz p2, :cond_2

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    .line 168
    :goto_1
    if-eqz p3, :cond_3

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    .line 173
    :goto_2
    if-eqz p4, :cond_4

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    .line 178
    :goto_3
    if-eqz p5, :cond_5

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mUpdate:Ljava/lang/ref/WeakReference;

    .line 183
    :goto_4
    if-eqz p6, :cond_6

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    .line 188
    :goto_5
    if-eqz p7, :cond_7

    .line 189
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    .line 194
    :goto_6
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-direct {v0}, Lcom/alipay/android/app/data/LuaNativeHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/IDataScriptable;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/IDocumentScriptable;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/IWindowScriptable;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/IPhoneScriptable;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/IUpdateScriptable;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/INetworkScriptable;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Lcom/alipay/android/app/script/ITidScriptable;)V

    .line 206
    :cond_0
    return-void

    .line 161
    :cond_1
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 166
    :cond_2
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 171
    :cond_3
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    goto :goto_2

    .line 176
    :cond_4
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    goto :goto_3

    .line 181
    :cond_5
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mUpdate:Ljava/lang/ref/WeakReference;

    goto :goto_4

    .line 186
    :cond_6
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    goto :goto_5

    .line 191
    :cond_7
    iput-object v1, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    goto :goto_6
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alert("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alert("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/data/k;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public allowback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/data/r;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    return-void
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attr("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 551
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/IDocumentScriptable;->attr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attr("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 571
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/data/q;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method

.method public cache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/IDocumentScriptable;->cache(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 807
    :goto_0
    return-object v0

    .line 803
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/script/IDocumentScriptable;->cache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "call("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 491
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IPhoneScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/IPhoneScriptable;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 589
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/IDocumentScriptable;->checkInput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 592
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 596
    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaLength:I

    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/LuaNativeHelper;->a()V

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    .line 153
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "confirm("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 321
    iget-object v10, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/l;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/alipay/android/app/data/l;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 643
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 644
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/IDataScriptable;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "delete("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 627
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/IDataScriptable;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 394
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/o;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/data/o;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public doUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doUpdate("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 450
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mUpdate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mUpdate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mUpdate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IUpdateScriptable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/script/IUpdateScriptable;->doUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 690
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/script/IDocumentScriptable;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected excuteLuaFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V
    .locals 8

    .prologue
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaLength:I

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 125
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->initScriptable(Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    .line 127
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 128
    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "params["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected excuteLuaString(Ljava/lang/String;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V
    .locals 8

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 83
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->initScriptable(Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaHelper:Lcom/alipay/android/app/data/LuaNativeHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->a(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mLuaLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 412
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/data/p;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getById("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 532
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/IDocumentScriptable;->getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 539
    :cond_0
    :goto_0
    return-object p0

    .line 535
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 703
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/IWindowScriptable;->getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loading("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loading("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loading("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/data/h;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    invoke-virtual {p0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "log("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 658
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->openWithCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public varargs open([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/data/i;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method

.method public varargs openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/data/j;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 785
    return-void
.end method

.method public putSubmitData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/script/IDocumentScriptable;->putSubmitData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs readsms(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IPhoneScriptable;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/script/IPhoneScriptable;->readsms(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 714
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/INetworkScriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/script/INetworkScriptable;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 678
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/ITidScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/ITidScriptable;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 666
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mTid:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/ITidScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/script/ITidScriptable;->save(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "send("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 512
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mNetwork:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/INetworkScriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/script/INetworkScriptable;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 473
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mPhone:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IPhoneScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/script/IPhoneScriptable;->sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public style(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mDoc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/script/IDocumentScriptable;->style(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->submit(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "submit("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/m;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/data/m;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "toast("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 376
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/data/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/data/n;-><init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "write("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 609
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcuteAdapter;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/script/IDataScriptable;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
