.class public Lcom/alipay/android/app/data/LuaNativeHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/data/LuaNativeObjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "msplua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_create_context()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_destroy_context(I)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/LuaNativeObjectCache;->a()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    .line 80
    :cond_1
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IDataScriptable;)V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_data(ILcom/alipay/android/app/script/IDataScriptable;)V

    .line 59
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IDocumentScriptable;)V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_doc(ILcom/alipay/android/app/script/IDocumentScriptable;)V

    .line 35
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/INetworkScriptable;)V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_network(ILcom/alipay/android/app/script/INetworkScriptable;)V

    .line 47
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IPhoneScriptable;)V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_phone(ILcom/alipay/android/app/script/IPhoneScriptable;)V

    .line 51
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/ITidScriptable;)V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_tid(ILcom/alipay/android/app/script/ITidScriptable;)V

    .line 43
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IUpdateScriptable;)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_update(ILcom/alipay/android/app/script/IUpdateScriptable;)V

    .line 55
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IWindowScriptable;)V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_win(ILcom/alipay/android/app/script/IWindowScriptable;)V

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_execute_script(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_execute_function(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method native native_create_context()I
.end method

.method native native_destroy_context(I)V
.end method

.method native native_execute_function(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method native native_execute_script(ILjava/lang/String;)V
.end method

.method native native_set_data(ILcom/alipay/android/app/script/IDataScriptable;)V
.end method

.method native native_set_doc(ILcom/alipay/android/app/script/IDocumentScriptable;)V
.end method

.method native native_set_network(ILcom/alipay/android/app/script/INetworkScriptable;)V
.end method

.method native native_set_phone(ILcom/alipay/android/app/script/IPhoneScriptable;)V
.end method

.method native native_set_tid(ILcom/alipay/android/app/script/ITidScriptable;)V
.end method

.method native native_set_update(ILcom/alipay/android/app/script/IUpdateScriptable;)V
.end method

.method native native_set_win(ILcom/alipay/android/app/script/IWindowScriptable;)V
.end method
