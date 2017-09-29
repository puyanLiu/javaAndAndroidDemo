.class public final Lcom/alipay/android/phone/thirdparty/common/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field protected static sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

.field protected static sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

.field protected static sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->getInstance()Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    .line 151
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->getInstance()Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 184
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 196
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 190
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 238
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 250
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 244
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 202
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 214
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 208
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->setLogLevel(I)V

    .line 161
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->setLogLevel(I)V

    .line 162
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->setLogLevel(I)V

    .line 163
    return-void
.end method

.method public static setLogger(Lcom/alipay/android/phone/thirdparty/common/log/Logger;)V
    .locals 0

    .prologue
    .line 154
    sput-object p0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    .line 155
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 166
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 178
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 172
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 220
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 232
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 226
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sTargetLogger:Lcom/alipay/android/phone/thirdparty/common/log/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sAndroidLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log;->sJ2seLogger:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :cond_1
    return-void
.end method
