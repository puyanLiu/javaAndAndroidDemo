.class public Lcom/alipay/android/app/data/LuaExcutor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/script/IScriptExcutor;


# instance fields
.field private a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

.field private b:Lcom/alipay/android/app/script/IDataScriptable;

.field private c:Lcom/alipay/android/app/script/IDocumentScriptable;

.field private d:Lcom/alipay/android/app/script/INetworkScriptable;

.field private e:Lcom/alipay/android/app/script/IPhoneScriptable;

.field private f:Lcom/alipay/android/app/script/IUpdateScriptable;

.field private g:Lcom/alipay/android/app/script/IWindowScriptable;

.field private h:Lcom/alipay/android/app/script/ITidScriptable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/alipay/android/app/data/LuaExcuteAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V
    .locals 1

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/script/IDataScriptable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/alipay/android/app/script/IDataScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    .line 113
    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/script/IDocumentScriptable;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    .line 116
    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/script/INetworkScriptable;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/alipay/android/app/script/INetworkScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    .line 119
    :cond_4
    instance-of v0, p1, Lcom/alipay/android/app/script/IPhoneScriptable;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/alipay/android/app/script/IPhoneScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    .line 122
    :cond_5
    instance-of v0, p1, Lcom/alipay/android/app/script/IUpdateScriptable;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/alipay/android/app/script/IUpdateScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    .line 125
    :cond_6
    instance-of v0, p1, Lcom/alipay/android/app/script/IWindowScriptable;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    .line 128
    :cond_7
    instance-of v0, p1, Lcom/alipay/android/app/script/ITidScriptable;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/alipay/android/app/script/ITidScriptable;

    iput-object p1, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    if-nez v1, :cond_2

    move-object v2, v0

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    if-nez v1, :cond_3

    move-object v3, v0

    .line 65
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    if-nez v1, :cond_4

    move-object v4, v0

    .line 66
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-nez v1, :cond_5

    move-object v5, v0

    .line 67
    :goto_4
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    if-nez v1, :cond_6

    move-object v6, v0

    .line 68
    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    if-nez v1, :cond_7

    move-object v7, v0

    .line 69
    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    if-nez v1, :cond_8

    move-object v8, v0

    .line 70
    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->excuteLuaString(Ljava/lang/String;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    goto :goto_1

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    goto :goto_2

    .line 65
    :cond_4
    iget-object v4, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    goto :goto_3

    .line 66
    :cond_5
    iget-object v5, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    goto :goto_4

    .line 67
    :cond_6
    iget-object v6, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    goto :goto_5

    .line 68
    :cond_7
    iget-object v7, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    goto :goto_6

    .line 69
    :cond_8
    iget-object v8, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    if-nez v0, :cond_2

    move-object v4, v2

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    if-nez v0, :cond_3

    move-object v5, v2

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    if-nez v0, :cond_4

    move-object v6, v2

    .line 89
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-nez v0, :cond_5

    move-object v7, v2

    .line 90
    :goto_4
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    if-nez v0, :cond_6

    move-object v8, v2

    .line 91
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    if-nez v0, :cond_7

    move-object v9, v2

    .line 92
    :goto_6
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    if-nez v0, :cond_8

    move-object v10, v2

    .line 93
    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->excuteLuaFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    goto :goto_1

    .line 87
    :cond_3
    iget-object v5, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    goto :goto_2

    .line 88
    :cond_4
    iget-object v6, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    goto :goto_3

    .line 89
    :cond_5
    iget-object v7, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    goto :goto_4

    .line 90
    :cond_6
    iget-object v8, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    goto :goto_5

    .line 91
    :cond_7
    iget-object v9, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    goto :goto_6

    .line 92
    :cond_8
    iget-object v10, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_7
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->close()V

    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/IPhoneScriptable;->dispose()V

    .line 49
    :cond_0
    return-void
.end method
