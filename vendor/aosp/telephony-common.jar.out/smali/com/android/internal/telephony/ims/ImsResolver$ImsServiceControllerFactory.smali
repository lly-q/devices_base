.class public interface abstract Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImsServiceControllerFactory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)Lcom/android/internal/telephony/ims/ImsServiceController;
.end method

.method public abstract getServiceInterface()Ljava/lang/String;
.end method
