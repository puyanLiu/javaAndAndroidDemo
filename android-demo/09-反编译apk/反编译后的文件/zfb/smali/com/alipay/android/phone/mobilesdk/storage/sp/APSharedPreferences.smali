.class public Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
.super Ljava/lang/Object;
.source "APSharedPreferences.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private edit:Landroid/content/SharedPreferences$Editor;

.field private mGroup:Ljava/lang/String;

.field private mMode:I

.field private sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "SharedPreferencesManager"

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    .line 12
    const-string/jumbo v0, "alipay_default_sp"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    .line 14
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    .line 22
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->init()V

    .line 23
    return-void
.end method

.method private contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 117
    :cond_0
    return p3
.end method

.method private getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    .line 149
    :cond_0
    return p3
.end method

.method private getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 133
    :cond_0
    return p3
.end method

.method private getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    .line 141
    :cond_0
    return-wide p3
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 125
    :cond_0
    return-object p3
.end method

.method private init()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    .line 29
    :cond_0
    return-void
.end method

.method private putBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putFloat(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putLong(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putFloat(Ljava/lang/String;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
