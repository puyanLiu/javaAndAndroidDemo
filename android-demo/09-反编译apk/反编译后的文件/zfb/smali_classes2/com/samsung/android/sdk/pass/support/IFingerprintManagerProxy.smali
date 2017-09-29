.class public interface abstract Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
.super Ljava/lang/Object;


# virtual methods
.method public abstract attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
.end method

.method public abstract cancel(Landroid/os/IBinder;)Z
.end method

.method public abstract detachClient(Landroid/os/IBinder;)Z
.end method

.method public abstract getEnrolledFingers()I
.end method

.method public abstract getEnrolledFingersIndex(I)Z
.end method

.method public abstract getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasPendingCommand()Z
.end method

.method public abstract identify(Landroid/os/IBinder;Ljava/lang/String;)I
.end method

.method public abstract identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
.end method

.method public abstract registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
.end method

.method public abstract showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
.end method

.method public abstract startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
.end method

.method public abstract unregisterClient(Landroid/os/IBinder;)Z
.end method
