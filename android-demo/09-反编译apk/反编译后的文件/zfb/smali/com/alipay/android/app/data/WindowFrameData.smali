.class public final Lcom/alipay/android/app/data/WindowFrameData;
.super Lcom/alipay/android/lib/plusin/ui/WindowData;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/alipay/android/app/json/JSONObject;

.field private e:Lcom/alipay/android/app/json/JSONArray;

.field private f:Ljava/util/Map;
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

.field private g:Ljava/util/Map;
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

.field private h:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;Ljava/lang/String;ILcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONArray;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/alipay/android/app/data/WindowFrameData;->c:I

    .line 45
    iput-object p5, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    .line 46
    iput-object p6, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lcom/alipay/android/app/json/JSONArray;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 70
    if-eqz p1, :cond_0

    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/data/WindowFrameData;->o()V

    .line 75
    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v1, "transparent_dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0

    .line 81
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->dispose()V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    .line 143
    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    .line 144
    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lcom/alipay/android/app/json/JSONArray;

    .line 145
    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    .line 146
    iput-object v1, p0, Lcom/alipay/android/app/data/WindowFrameData;->b:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Lcom/alipay/android/app/json/JSONArray;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->e:Lcom/alipay/android/app/json/JSONArray;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/data/WindowFrameData;->f:Ljava/util/Map;

    return-object v0
.end method
