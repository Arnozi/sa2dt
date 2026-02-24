# 0 "src/game/title_screen.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/title_screen.c"
# 1 "include/core.h" 1




# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 9 "/usr/share/mingw-w64/include/string.h" 3
# 1 "/usr/share/mingw-w64/include/crtdefs.h" 1 3
# 10 "/usr/share/mingw-w64/include/crtdefs.h" 3
# 1 "/usr/share/mingw-w64/include/corecrt.h" 1 3
# 10 "/usr/share/mingw-w64/include/corecrt.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 10 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw_mac.h" 1 3
# 98 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 107 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 306 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 384 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 11 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 1 "/usr/share/mingw-w64/include/_mingw_secapi.h" 1 3
# 12 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 282 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/vadefs.h" 1 3
# 9 "/usr/share/mingw-w64/include/vadefs.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 661 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/sdks/_mingw_ddk.h" 1 3
# 662 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 10 "/usr/share/mingw-w64/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
  
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "/usr/share/mingw-w64/include/vadefs.h" 3
#pragma pack(pop)
# 283 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 580 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 601 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 615 "/usr/share/mingw-w64/include/_mingw.h" 3
  __builtin_unreachable();
}
# 641 "/usr/share/mingw-w64/include/_mingw.h" 3
const char *__mingw_get_crt_info (void);
# 11 "/usr/share/mingw-w64/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "/usr/share/mingw-w64/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "/usr/share/mingw-w64/include/corecrt.h" 3
#pragma pack(pop)
# 11 "/usr/share/mingw-w64/include/crtdefs.h" 2 3
# 10 "/usr/share/mingw-w64/include/string.h" 2 3
# 45 "/usr/share/mingw-w64/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);



  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;

  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "/usr/share/mingw-w64/include/sec_api/string_s.h" 1 3
# 9 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 10 "/usr/share/mingw-w64/include/sec_api/string_s.h" 2 3
# 24 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 195 "/usr/share/mingw-w64/include/string.h" 2 3
# 6 "include/core.h" 2


# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 18 "/usr/share/mingw-w64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 424 "/usr/share/mingw-w64/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 6 "include/gba/defines.h" 2
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 3 4
# 1 "/usr/share/mingw-w64/include/stdint.h" 1 3 4
# 32 "/usr/share/mingw-w64/include/stdint.h" 3 4
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 33 "/usr/share/mingw-w64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 10 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 2 3 4
# 7 "include/gba/defines.h" 2
# 56 "include/gba/defines.h"

# 56 "include/gba/defines.h"
extern uint8_t VRAM[(0x18000 + (0x800 * (12)))];
# 65 "include/gba/defines.h"
extern struct SoundMixerState *SOUND_INFO_PTR;
extern uint16_t INTR_CHECK;
extern void (*INTR_VECTOR)(void);

extern uint8_t EWRAM_START[0x40000];
extern uint8_t IWRAM_START[0x7E00];
extern uint16_t PLTT[0x400/sizeof(uint16_t)];


extern uint8_t OAM[(128*0xC)];
# 131 "include/gba/defines.h"
typedef uint32_t winreg_t;
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 13 "include/gba/io_reg.h"
extern unsigned char REG_BASE[0x400];
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1
# 23 "include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;




typedef u16 MetatileIndexType;
# 47 "include/gba/types.h"
typedef u16 int_vcount;




typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};
# 183 "include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { s16 x; s16 y; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 matrixNum:5; u32 size:2; u32 padding:17; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; } OamDataShort;
# 201 "include/gba/types.h"
  ;

typedef union {
    struct {
               s16 x;
               s16 y;

               u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

               u32 matrixNum:5;
               u32 size:2;
               u32 padding:17;

               u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

               u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        s16 x;
        s16 y;
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[6];
} OamData;
# 308 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioNormalCnt
{
    u16 sck_I_O:1;
    u16 sck:1;
    u16 ackRecv:1;
    u16 ackSend:1;
    u16 unused_6_4:3;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 362 "include/gba/types.h"
struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 387 "include/gba/types.h"
struct SioUartCnt
{
    u16 baudRate:2;
    u16 ctsEnable:1;
    u16 paritySelect:1;
    u16 transDataFull:1;
    u16 recvDataEmpty:1;
    u16 error:1;
    u16 length:1;
    u16 fifoEnable:1;
    u16 parityEnable:1;
    u16 transEnable:1;
    u16 recvEnable:1;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 415 "include/gba/types.h"
struct JoyCnt
{
    u8 ifReset:1;
    u8 ifRecv:1;
    u8 ifSend:1;
    u8 unused_5_3:3;
    u8 ifEnable:1;
    u8 unused_7:1;
};


struct JoyStat
{
    u8 unused_0:1;
    u8 recv:1;
    u8 unused_2:1;
    u8 send:1;
    u8 flags:2;
    u8 unused_7_6:2;
};


struct RCnt
{
    u8 sc:1;
    u8 sd:1;
    u8 si:1;
    u8 so:1;
    u8 sc_i_o:1;
    u8 sd_i_o:1;
    u8 si_i_o:1;
    u8 so_i_o:1;
    u8 ifEnable:1;
    u8 unused_13_9:5;
    u8 sioModeMaster:2;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    u8 *boot_srcp;
    u8 *boot_endp;
    u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
typedef struct {
    u32 srcLength : 16;
    u32 srcWidth : 8;
    u32 dstWidth : 8;
} BitUnPackData;

void SoftReset(u32 resetFlags);
void SoftResetExram(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);
# 72 "include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1



# 1 "include/gba/cpuset_macros.h" 1
# 5 "include/gba/macro.h" 2
# 1 "include/gba/dma_macros.h" 1



# 1 "include/config.h" 1
# 5 "include/gba/dma_macros.h" 2
# 16 "include/gba/dma_macros.h"
extern void DmaSet(int dmaNum, const void *src, void *dest, u32 control);
# 78 "include/gba/dma_macros.h"
extern void DmaStop(int dmaNum);
# 172 "include/gba/dma_macros.h"
extern void DmaWait(int dmaNum);
# 6 "include/gba/macro.h" 2
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "include/gba/gba.h" 2
# 6 "include/global.h" 2
# 21 "include/global.h"
void *Platform_malloc(size_t numBytes);
void *Platform_realloc(void *ptr, size_t numBytes);
void Platform_free(void *ptr);
# 33 "include/global.h"
typedef void (*VoidFn)(void);
# 301 "include/global.h"
typedef struct {
    s16 x;
    s16 y;
} Vec2_16;

typedef struct {
    s32 x;
    s32 y;
} Vec2_32;

typedef struct {
    u8 reserved : 4;
    u8 compressedType : 4;
    u32 size : 24;
    void *data;
} RLCompressed;

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};







typedef struct {
               u16 pa, pb, pc, pd;
               u32 x, y;
} BgAffineReg;


typedef void (*HBlankIntrFunc)(int_vcount vcount);
typedef void (*IntrFunc)(void);

extern void *iwram_end;
extern void *ewram_end;

extern void *rom_footer;
# 9 "include/core.h" 2
# 1 "include/sprite.h" 1




# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 6 "include/sprite.h" 2

typedef u16 AnimId;

struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
};
# 66 "include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 81 "include/sprite.h"
               u16 *layoutVram;



               const u16 *layout;




               u16 xTiles;
               u16 yTiles;

               u16 unk18;
               u16 unk1A;
               u16 tilemapId;
               u16 unk1E;

               u16 unk20;
               u16 unk22;
               u16 unk24;




               u16 targetTilesX;
               u16 targetTilesY;

               u8 paletteOffset;
               u8 animFrameCounter;
               u8 animDelayCounter;

               u16 flags;


               u16 scrollX;
               u16 scrollY;
               u16 prevScrollX;
               u16 prevScrollY;


               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
} Background;

typedef struct {






               u8 flip;



               u8 oamIndex;




               u16 numSubframes;


               u16 width;

               u16 height;

               s16 offsetX;
               s16 offsetY;
} SpriteOffset;





typedef struct {

               s32 index;


               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Hitbox;





typedef struct {
               struct GraphicsData graphics;
               const SpriteOffset *dimensions;


               u32 frameFlags;
# 195 "include/sprite.h"
               u16 animCursor;

               s16 x;
               s16 y;

               u16 oamFlags;

               s16 qAnimDelay;
               u16 prevAnim;
               u8 variant;
               u8 prevVariant;


               u8 animSpeed;

               u8 oamBaseIndex;
               u8 numSubFrames;
               u8 palId;
               Hitbox hitboxes[1];
} Sprite ;


typedef struct {
    Sprite s;
    Hitbox hb1;
} Sprite2;


typedef struct {
    Sprite s;
    Hitbox hb1;
    Hitbox hb2;
} Sprite3;

typedef struct {
               u16 rotation;
               s16 qScaleX;
               s16 qScaleY;
               s16 x;
               s16 y;
} SpriteTransform;

typedef struct {
               s16 unk0[4];
               s16 qDirX;
               s16 qDirY;

               s16 unkC[2];

               s32 posX;
               s32 posY;

               s16 unk18[2][2];
               u16 affineIndex;
} UnkSpriteStruct;

typedef struct {
               u32 numTiles;
               AnimId anim;
               u8 variant;
} TileInfo;


typedef struct {
               void *tiles;
               AnimId anim;
               u8 variant;
} TileInfoPtr;

typedef struct __attribute__((packed)) TileInfo16 { u16 numTiles; AnimId anim; u16 variant; } TileInfo16;



  ;

extern const u8 gOamShapesSizes[12][2];

typedef enum {
    ACMD_RESULT__ANIM_CHANGED = -1,
    ACMD_RESULT__ENDED = 0,
    ACMD_RESULT__RUNNING = +1,
} AnimCmdResult;

AnimCmdResult UpdateSpriteAnimation(Sprite *);

void DisplaySprite(Sprite *);
void DrawBackground(Background *);
bool32 sub_8002B20(void);
bool32 sub_80039E4(void);
bool32 sub_8004010(void);
void ProcessOamBuffers(void);
OamData *OamMalloc(u8 order);

void TransformSprite(Sprite *, SpriteTransform *);
void UnusedTransform(Sprite *, SpriteTransform *);
void sub_8004E14(Sprite *, SpriteTransform *);

void sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine);
void sub_8006228(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);
void sub_80064A8(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);

s32 UpdateSpriteAnimation_BG(Sprite *);
void DisplaySprite_BG(Sprite *);
void sub_80047A0(u16, s16, s16, u16);

s16 sub_8004418(s16 x, s16 y);
void numToASCII(u8 digits[5], u16 number);
# 10 "include/core.h" 2
# 1 "include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);
# 25 "include/task.h"
typedef struct Task *TaskPtr;
typedef TaskPtr TaskPtr32;




typedef void *IwramData;
# 55 "include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;

    u32 dataSize;

               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;



               u8 unk14;
               u8 unk15;
               u16 unk16;
               u16 unk18;





} Task;





struct IwramNode;

typedef struct IwramNode *IwramNodePtr;
typedef IwramNodePtr IwramNodePtr32;




struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "include/core.h" 2
# 1 "include/flags.h" 1
# 23 "include/flags.h"
extern u32 gFlags;
# 12 "include/core.h" 2
# 1 "include/tilemap.h" 1
# 10 "include/tilemap.h"
typedef struct {
    u16 index : 10;
    u16 xFlip : 1;
    u16 yFlip : 1;
    u16 pal : 4;
} Tile;

typedef struct {
               u16 xTiles;
               u16 yTiles;
               u16 animTileSize;
               u8 animFrameCount;
               u8 animDelay;
               const u8 *tiles;
               u32 tilesSize;
               const u16 *palette;
               u16 palOffset;
               u16 palLength;



               const u16 *map;
} Tilemap;

struct MapHeader {
               Tilemap tileset;
               const u16 *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
};
# 13 "include/core.h" 2
# 1 "include/input_recorder.h" 1
# 12 "include/input_recorder.h"
struct InputRecorder {
               s32 playbackHead;
               s32 recordHead;
               u8 mode;
};

void InputRecorderResetRecordHead(void);
void InputRecorderResetPlaybackHead(void);
void InputRecorderLoadTape(void);
u16 InputRecorderRead(void);
void InputRecorderWrite(u16);
# 14 "include/core.h" 2
# 1 "include/animation_commands.h" 1
# 9 "include/animation_commands.h"
typedef AnimCmdResult (*AnimationCommandFunc)(void *cursor, Sprite *sprite);

typedef struct {
               s32 cmdId;



               s32 tileIndex;

               u32 numTilesToCopy;
} ACmd_GetTiles;

typedef struct {
               s32 cmdId;

               s32 palId;
               u16 numColors;
               u16 insertOffset;
} ACmd_GetPalette;

typedef struct {
               s32 cmdId;

               s32 offset;
} ACmd_JumpBack;

typedef struct {
               s32 cmdId;
} ACmd_4;

typedef struct {
               s32 cmdId;

               u16 songId;
} ACmd_PlaySoundEffect;


typedef struct {
               s32 cmdId;

               Hitbox hitbox;
} ACmd_Hitbox;

typedef struct {
               s32 cmdId;

               u16 x;
               u16 y;
} ACmd_TranslateSprite;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
} ACmd_8;

typedef struct {
               s32 cmdId;

               AnimId animId;
               u16 variant;
} ACmd_SetIdAndVariant;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
               s32 unkC;
} ACmd_10;

typedef struct {
               s32 cmdId;

               s32 priority;
} ACmd_SetSpritePriority;

typedef struct {
               s32 cmdId;

               s32 orderIndex;
} ACmd_SetOamOrder;

typedef struct {

    s32 delay;


    s32 index;
} ACmd_ShowFrame;

typedef union {
    s32 id;

    ACmd_GetTiles tiles;
    ACmd_GetPalette pal;
    ACmd_JumpBack jump;
    ACmd_4 end;
    ACmd_PlaySoundEffect sfx;
    ACmd_Hitbox _6;
    ACmd_TranslateSprite translate;
    ACmd_8 _8;
    ACmd_SetIdAndVariant setAnimId;
    ACmd_10 _10;
    ACmd_SetSpritePriority _11;
    ACmd_SetOamOrder setOamOrder;

    ACmd_ShowFrame show;
} ACmd;

u32 Base10DigitsToHexNibbles(u16 num);
# 15 "include/core.h" 2

struct MultiSioData_0_0 {

    u16 unk0;

    u8 unk2;

    u8 unk3;
    u32 unk4;
    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_1 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};
struct MultiSioData_0_2 {

    u8 unk0;
    u8 filler1;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_3 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u32 unk8;
    u16 unkC;



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_4 {

    u16 unk0;

    s16 x;
    s16 y;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;



    u8 unkE;
    u8 numRings;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
    struct MultiSioData_0_3 pat3;
    struct MultiSioData_0_4 pat4;
};







typedef u32 collPxDim_t;



typedef struct {
               const s8 *height_map;
               const u8 *tile_rotation;
               const u16 *metatiles;
               const MetatileIndexType *map[2];
               const u16 *flags;
               u16 levelX, levelY;
               collPxDim_t pxWidth, pxHeight;


} Collision;

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
};

union Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
};

struct SpriteTables {
               const ACmd **const *animations;
               const SpriteOffset *const *dimensions;
               const u16 **const oamData;
               const u16 *const palettes;
               const u8 *const tiles_4bpp;
               const u8 *const tiles_8bpp;
};
# 197 "include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 215 "include/core.h"
extern IntrFunc gIntrTable[16];
extern IntrFunc const gIntrTableTemplate[14];
extern u32 gIntrMainBuf[0x80];

extern struct Task *gCurTask;
extern struct Task gTasks[128];
extern struct Task *gTaskPtrs[128];
extern struct Task *gNextTask;
extern struct Task gEmptyTask;
extern s32 gNumTasks;

extern u16 gInput;
extern u16 gPrevInput;
extern u16 gPhysicalInput;
extern u16 gReleasedKeys;
extern u16 gRepeatedKeys;
extern u16 gPressedKeys;
extern u8 gKeysFirstRepeatIntervals[10];
extern u8 gRepeatedKeysTestCounter[10];
extern u8 gKeysContinuedRepeatIntervals[10];

extern const u8 *gInputPlaybackData;
extern struct InputRecorder gInputRecorder;
extern u16 *gInputRecorderTapeBuffer;

extern union MultiSioData gMultiSioSend;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;

extern HBlankIntrFunc gHBlankIntrs[4];
extern HBlankIntrFunc gHBlankCallbacks[4];
extern u8 gNumHBlankCallbacks;
extern u8 gNumHBlankIntrs;

extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

extern void *gVramHeapStartAddr;
extern u16 gVramHeapMaxTileSlots;
extern u16 gVramHeapState[((0x18000 + (0x800 * (12))) - 0x10000) / (4 * 32)];

extern bool8 gExecSoundMain;

extern u16 gDispCnt;
# 273 "include/core.h"
extern winreg_t gWinRegs[6];
extern struct BlendRegs gBldRegs;
extern BgAffineReg gBgAffineRegs[2];
extern u16 gObjPalette[16 * 16u];
extern u16 gBgPalette[16 * 16u];

extern u16 gBgCntRegs[4];



extern s16 gBgScrollRegs[4][2];

extern OamData gOamMallocBuffer[128];
extern OamData gOamBuffer[128];


extern int_vcount gBgOffsetsBuffer[2][240][4];
extern Background *gBackgroundsCopyQueue[16];


extern void *gBgOffsetsHBlankPrimary;

extern u16 gUnknown_030017F0;
extern Vec2_16 gSpriteOffset;
extern u8 gOamMallocOrders_StartIndex[32];
extern IntrFunc gVBlankCallbacks[4];

extern u8 gOamFreeIndex;
extern u16 gUnknown_03001944;
extern u8 gNumVBlankIntrs;
extern s16 gUnknown_0300194C;

extern Tilemap **gTilemapsRef;
extern u8 gBgSprites_Unknown2[4][4];
extern u8 gBgSprites_Unknown1[4];
# 317 "include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 334 "include/core.h"
extern struct GraphicsData gVramGraphicsCopyQueueBuffer[32];
# 357 "include/core.h"
extern void *gBgOffsetsHBlankSecondary;
extern void *gBgOffsetsSecondary;

extern s16 gMosaicReg;
extern u8 gUnknown_030026F4;

extern s16 gUnknown_03002820;
extern u8 gVCountSetting;
extern void *gHBlankCopyTarget;
extern u8 gBackgroundsCopyQueueIndex;
extern u8 gHBlankCopySize;
extern u16 gUnknown_03002A8C;


extern u8 gOamFirstPausedIndex;
extern u8 gBackgroundsCopyQueueCursor;
extern Sprite *gBgSprites[16];
extern u8 gNumVBlankCallbacks;
extern void *gBgOffsetsPrimary;
extern u16 gUnknown_03004D58;
extern u8 gVramGraphicsCopyCursor;
extern u8 gOamMallocOrders_EndIndex[0x20];
extern u8 gBgSpritesCount;
extern u16 gUnknown_03005394;
extern u16 gUnknown_03005398;
extern IntrFunc gVBlankIntrs[4];
extern s32 gPseudoRandom;
extern u8 gOamMallocCopiedOrder[128];
extern struct MultiBootParam gMultiBootParam;

extern const struct SpriteTables *gRefSpriteTables;

void EngineInit(void);
void EngineMainLoop(void);
# 2 "src/game/title_screen.c" 2
# 1 "include/flags.h" 1
# 3 "src/game/title_screen.c" 2
# 1 "include/global.h" 1
# 4 "src/game/title_screen.c" 2
# 1 "include/malloc_vram.h" 1
# 5 "src/game/title_screen.c" 2

# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 7 "src/game/title_screen.c" 2
# 1 "include/task.h" 1
# 8 "src/game/title_screen.c" 2
# 1 "include/sprite.h" 1
# 9 "src/game/title_screen.c" 2
# 1 "include/lib/m4a/m4a.h" 1



# 1 "include/lib/m4a/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/lib/m4a/m4a_internal.h" 2
# 109 "include/lib/m4a/m4a_internal.h"
struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            float fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;



    float sampleRateReciprocal;

    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];



    float pcmBuffer[4907 * 2];

};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];






u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 5 "include/lib/m4a/m4a.h" 2

extern struct SoundMixerState gSoundInfo;

extern struct MP2KPlayerState gMPlayInfo_BGM;
extern struct MP2KPlayerState gMPlayInfo_SE1;
extern struct MP2KPlayerState gMPlayInfo_SE2;
extern struct MP2KPlayerState gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayAllContinue(void);
void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo);
void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
# 10 "src/game/title_screen.c" 2
# 1 "include/input_recorder.h" 1
# 11 "src/game/title_screen.c" 2

# 1 "include/game/title_screen.h" 1
# 9 "include/game/title_screen.h"
extern const TileInfo gPressStartTiles[];

void CreateTitleScreen(void);
void CreateTitleScreenAndSkipIntro(void);

void CreateTitleScreenAtPlayModeMenu(void);

void CreateTitleScreenAtSinglePlayerMenu(void);
# 13 "src/game/title_screen.c" 2
# 1 "include/game/bg_palette_effects.h" 1






typedef struct {
    u8 unk0;
    u8 bgPalId;
    u8 cursor;

    const u8 *pattern;

    const u16 *palette;

    u8 unkC;
    u8 unkD;
    u8 unkE;

    s8 rShift;
    s8 gShift;
    s8 bShift;
    s8 unk12;

    u8 unk13;

    u16 palBuffer[16];

    s16 offset;
    u8 unk36;
} BgPaletteEffectState;

typedef struct {
    BgPaletteEffectState *state;
    Background *background;
} BackgroundPaletteEffects;

extern BackgroundPaletteEffects gBgPaletteEffects;

void BgPaletteEffectGradient(int_vcount vcount);
# 14 "src/game/title_screen.c" 2
# 1 "include/game/character_select.h" 1






void CreateCharacterSelectionScreen(u8 selectedCharacter, bool8 allUnlocked);
# 15 "src/game/title_screen.c" 2
# 1 "include/game/math.h" 1






struct UNK_8085F1C_1 {
    s16 unk0;
    s16 unk2[9];
    s32 unk14;
    s32 unk18;
    s32 unk1C;
};

struct UNK_8085F1C {
    struct UNK_8085F1C *unk0;
    u8 unk4[8];
    u32 unkC;
    s32 unk10;
    struct UNK_8085F1C_1 unk14;
    struct UNK_8085F1C_1 unk34;

    s16 unk54;
    s16 unk56;
    s16 unk58;
    u8 unk59[2];

    s16 unk5C;
    s16 unk5E;
    s16 unk60;
    u8 unk62[2];

    s32 unk64;
    s32 unk68;
    s32 unk6C;

    u8 unk70[4];
};


u16 Random(void);
# 60 "include/game/math.h"
void SeedRng(u32 a, u32 b);

struct UNK_8085F1C_1 *sub_80853F8(struct UNK_8085F1C *p1);

u32 AbsMax(s32 a, s32 b);

u32 sub_8085530(s32 a, s32 b);
s16 sub_808558C(u16 a, u16 b, u8 c);
u32 sub_80855C0(s32 a, s32 b, s32 c, u8 d);
s32 sub_8085698(s32 a, s32 b, s32 c, u8 d, u8 e);
s32 sub_8085654(s32, s32, s32, u8, u8);
s16 sub_8085968(s16 *unk28, u16 param1);


u16 sub_80859F4(s16 *, u16);
# 16 "src/game/title_screen.c" 2
# 1 "include/game/multiplayer/mode_select.h" 1





void CreateMultiplayerModeSelectScreen(void);
# 17 "src/game/title_screen.c" 2
# 1 "include/game/options_screen.h" 1




# 1 "include/game/save.h" 1





# 1 "include/game/sa1_sa2_shared/globals.h" 1



# 1 "include/multi_sio.h" 1
# 83 "include/multi_sio.h"
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags : 4;
    u8 loadRequest : 1;
    u8 downloadSuccessFlag : 1;
    u8 loadSuccessFlag : 1;
    u8 reserved_0 : 1;
    u16 checkSum;
    u16 data[20 / 2];
    u16 overrunCatch[2];
};


struct MultiSioArea {
    u8 type;
    u8 state;
    u8 connectedFlags;
    u8 recvSuccessFlags;

    u8 syncRecvFlag[4];

    u8 downloadSuccessFlags : 4;
    u8 loadEnable : 1;
    u8 loadRequest : 1;
    u8 loadSuccessFlag : 1;
    u8 startFlag : 1;

    u8 hardError;
    u8 recvFlagsAvailableCounter;


    u8 sendFrameCounter;
    u8 recvFrameCounter[4][2];

    s32 sendBufCounter;
    s32 recvBufCounter[4];

    u16 *nextSendBufp;
    u16 *currentSendBufp;
    u16 *currentRecvBufp[4];
    u16 *lastRecvBufp[4];
    u16 *recvCheckBufp[4];

    struct MultiSioPacket sendBuf[2];
    struct MultiSioPacket recvBuf[4][3];

};







extern struct MultiSioArea gMultiSioArea;





extern void MultiSioInit(u32 connectedFlags);
# 155 "include/multi_sio.h"
void MultiSioStart(void);
# 164 "include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "include/multi_sio.h"
struct MultiSioReturn {
    u32 recvSuccessFlags : 4;
    u32 loadEnable : 1;
    u32 loadRequest : 1;
    u32 loadSuccessFlag : 1;
    u32 type : 1;
    u32 connectedFlags : 4;
    u32 hardError : 1;
    u32 idOverError : 1;
    u32 reserved : 1;
    u32 recvFlagsAvailable : 1;
};





extern void MultiSioIntr(void);
# 257 "include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 5 "include/game/sa1_sa2_shared/globals.h" 2
# 75 "include/game/sa1_sa2_shared/globals.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState;

typedef struct {
    s32 squarePlayerDistance;
    u16 angle;
} HomingTarget;






typedef struct {
    u8 type;

    u8 opaque[7];
} RoomEvent;


typedef struct {
               s32 squarePlayerDistance;
               struct Task *task;
} CheeseTarget;


extern u8 gDemoPlayCounter;
extern u8 gGameMode;

extern s8 gCurrentLevel;
extern s8 gSelectedCharacter;





extern u8 gMultiplayerLanguage;



extern u16 gRingCount;

extern MusicManagerState gMusicManagerState;


extern u32 gCourseTime;


extern u8 gSpecialRingCount;


extern s32 gWorldSpeedY;
extern s32 gWorldSpeedX;

extern u16 gBossCameraClampYLower;
extern u16 gBossCameraClampYUpper;
extern u8 gRandomItemBox;
extern u8 gSpikesUnknownTimer;

extern s8 gUnknown_0300543C;
extern struct Task *gEntitiesManagerTask;

extern u8 gDestroySpotlights;

extern u8 gRoomEventQueueSendPos;



extern u16 gStageFlags;
extern u16 gPrevStageFlags;

extern u8 gDifficultyLevel;

extern s8 gTrappedAnimalVariant;

extern u8 gBossIndex;
extern u8 gNumSingleplayerCharacters;



extern u32 gStageTime;
extern u32 gMPStageStartFrameCount;

extern u32 gCheckpointTime;

extern u8 gRoomEventQueueWritePos;

extern u8 gBossRingsRespawnCount;
extern bool8 gBossRingsShallRespawn;
extern bool8 gBoostEffectTasksCreated;

extern struct Task *gMultiplayerPlayerTasks[4];
extern s8 gMultiplayerCharacters[4];
extern s8 gMultiplayerRanks[4];
extern u8 gOamMatrixIndex;

extern u8 gMultiplayerMissingHeartbeats[4];
extern u8 gActiveCollectRingEffectCount;

extern u8 gMultiplayerUnlockedCharacters;
extern u8 gMultiplayerUnlockedLevels;
extern u32 gMultiplayerIds[4];
extern u16 gMultiplayerNames[4][6];

extern u32 gMultiplayerPseudoRandom;

extern s32 gLevelScore;
extern u8 gNumLives;
extern bool8 gFinalBossActive;

extern HomingTarget gHomingTarget;

extern u8 gMultiplayerConnections;


extern s32 gStageGoalX;

extern u8 gMPRingCollectWins[4];
extern u8 gMultiplayerCharRings[4];

extern RoomEvent gRoomEventQueue[16];

extern CheeseTarget gCheeseTarget;

extern u8 gFrameInputsBuf[4];






struct InputCounters {
    u8 unk0, unk1, unk2, unk3;
};

extern u8 gNewInputCountersIndex;
extern struct InputCounters gNewInputCounters[32];


extern u8 gFrameInputsBufIndex;
# 7 "include/game/save.h" 2

# 1 "include/game/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);
# 9 "include/game/save.h" 2
# 1 "include/constants/zones.h" 1
# 10 "include/game/save.h" 2
# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 11 "include/game/save.h" 2
# 23 "include/game/save.h"
typedef u16 PlayerNameChar;
typedef u16 TimeRecord;
# 67 "include/game/save.h"
struct TimeRecords {
    TimeRecord table[NUM_CHARACTERS][7][3][3];
};



struct MultiplayerScore {
    u32 playerId;
    PlayerNameChar playerName[6];

    bool8 slotFilled;

    u8 wins;
    u8 losses;
    u8 draws;
};

typedef struct SaveGame {
                u32 id;

                u8 difficultyLevel;
                bool8 timeLimitDisabled;
                u8 language;

                u8 unlockedLevels[NUM_CHARACTERS];
                u8 chaosEmeralds[NUM_CHARACTERS];

                bool8 soundTestUnlocked;
                bool8 bossTimeAttackUnlocked;

                u8 unlockedCharacters;
                bool8 chaoGardenUnlocked;

                bool8 completedCharacters[NUM_CHARACTERS];

                u8 extraZoneStatus;
                bool8 extraEndingCreditsPlayed;

                u8 multiplayerWins;
                u8 multiplayerLoses;
                u8 multiplayerDraws;

                u16 playerName[6];

                struct ButtonConfig buttonConfig;
                struct TimeRecords timeRecords;
                struct MultiplayerScore multiplayerScores[10];
                u32 score;
} SaveGame;

extern struct SaveGame *gLoadedSaveGame;
# 130 "include/game/save.h"
void InsertMultiplayerProfile(u32 playerId, u16 *name);
void RecordOwnMultiplayerResult(s16 result);
void RecordMultiplayerResult(u32 id, u16 *name, s16 result);

void SaveInit(void);
bool16 SaveGameExists(void);
s16 NewSaveGame(void);
s16 LoadSaveGame(void);
void LoadCompletedSaveGame(void);
bool32 WriteSaveGame(void);
# 6 "include/game/options_screen.h" 2

# 1 "include/game/stage/screen_fade.h" 1
# 23 "include/game/stage/screen_fade.h"
typedef struct {

               s16 window;
               s16 flags;
# 35 "include/game/stage/screen_fade.h"
               s16 brightness;
               s16 speed;
               s16 bldCnt;
               s16 bldAlpha;
} ScreenFade;


extern u8 UpdateScreenFade(ScreenFade *);
void sub_802D5A0(ScreenFade *fade);
# 8 "include/game/options_screen.h" 2
# 1 "include/constants/text.h" 1
# 9 "include/game/options_screen.h" 2
# 23 "include/game/options_screen.h"
struct OptionsScreenProfileData {

    u16 playerName[6];

    struct TimeRecords timeRecords;
    struct MultiplayerScore multiplayerScores[10];

    u8 multiplayerWins;
    u8 multiplayerLoses;
    u8 multiplayerDraws;

    struct ButtonConfig buttonConfig;
};


struct OptionsScreen {

    struct OptionsScreenProfileData profileData;

    u8 unusedUnk358;
    u8 difficultyLevel;
    u8 timeLimitDisabled;


    u8 language;

    bool8 soundTestUnlocked;

    u8 bossTimeAttackUnlocked;
    u8 unk35E;

    s16 subMenuXPos;
    s16 unk362;
    Background background;
    Background subMenuBackground;
    Sprite title;
    Sprite menuItems[8];

    Sprite metaItems[4];

    Sprite playerNameDisplay[6];
    ScreenFade unk774;
    s8 menuCursor;
    s8 prevCursorPosition;
    s8 initialSubMenuCursorPosition;
    s8 subMenuAnimFrame;
    s8 state;
};

extern void *gProfileScreenNextVramAddress;
extern void *gProfileScreenSubMenuNextVramAddress;

extern const u16 gUnknown_080D95A4[16];
extern const u16 gUnknown_080D95C4[2];
extern const u16 gUnknown_080D95C8[5];

extern const u16 gUnknown_080D95D2[2];
extern const u16 gUnknown_080D95D6[4][2];
# 90 "include/game/options_screen.h"
void CreateOptionsScreen(u16);
void CreateTimeAttackLevelSelectScreen(bool16 isBossView, s16 selectedCharacter, s8 currentLevel);
void CreateNewProfileScreen(void);
void CreateNewProfileNameScreen(s16 mode);

void sub_806A568(Sprite *obj, s8 target, u32 size, u16 c, u32 assetId, s16 xPos, s16 yPos, u16 oamOrder, u8 variant, u8 palId);
void OptionsInitBackground(Background *unk2400, u32 a, u32 b, u8 tilemapId, u16 d, u16 e, u16 f, u8 g, u16 scrollX, u16 scrollY);
# 18 "src/game/title_screen.c" 2
# 1 "include/game/sa1_sa2_shared/demo_manager.h" 1





void CreateDemoManager(void);
# 19 "src/game/title_screen.c" 2

# 1 "include/game/stage/stage.h" 1







void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 21 "src/game/title_screen.c" 2

# 1 "include/game/time_attack/lobby.h" 1





void CreateTimeAttackLobbyScreen(void);
# 23 "src/game/title_screen.c" 2
# 1 "include/game/time_attack/mode_select.h" 1





void CreateTimeAttackModeSelectionScreen(void);
# 24 "src/game/title_screen.c" 2
# 1 "include/game/sa1_sa2_shared/camera.h" 1




# 1 "include/tilemap.h" 1
# 6 "include/game/sa1_sa2_shared/camera.h" 2




typedef s32 CamCoord;
# 22 "include/game/sa1_sa2_shared/camera.h"
typedef void (*BgUpdate)(s32, s32);





typedef struct Camera {
                    CamCoord x;
                    CamCoord y;






               s32 unk8;
               s32 unkC;
               s32 unk10;
               s32 unk14;
               s32 shiftX;
               s32 shiftY;
               s32 unk20;
               s32 unk24;




               s32 minY;
               s32 maxY;
               s32 minX;
               s32 maxX;

               s32 dx;
               s32 dy;
               s16 unk40;
               s32 unk44;
               s32 unk48;
               s32 unk4C;



               u16 unk50;

               u16 unk52;
               u16 unk54;
               s16 unk56;
               BgUpdate fnBgUpdate;
               struct Task *movementTask;
               s16 shakeOffsetX;
               s16 shakeOffsetY;
               s16 unk64;
               u8 spectatorTarget;

} Camera;

extern struct Camera gCamera;
# 25 "src/game/title_screen.c" 2

# 1 "include/data/recordings.h" 1





extern const u8 *const gDemoRecordings[];
# 27 "src/game/title_screen.c" 2



# 1 "include/game/sa1_sa2_shared/unused_level_select.h" 1



void CreateUnusedLevelSelect(void);
# 31 "src/game/title_screen.c" 2







# 1 "include/game/assets/compressed/roms.h" 1





extern const u8 gMultiBootProgram_TinyChaoGarden[];
# 39 "src/game/title_screen.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 41 "src/game/title_screen.c" 2
# 1 "include/constants/songs.h" 1
# 42 "src/game/title_screen.c" 2
# 1 "include/constants/text.h" 1
# 43 "src/game/title_screen.c" 2
# 1 "include/constants/tilemaps.h" 1
# 44 "src/game/title_screen.c" 2

typedef struct {

    Background unk0;
    Background unk40;
    Background introSonicLogo;


    Sprite unkC0;
    Sprite unkF0;

    Sprite menuItems[6];


    Sprite unk240;


    ScreenFade unk270;

    BgPaletteEffectState bgEffect;


    u16 wavesTransformPA[240];
    BgAffineReg wavesAffineBuf[240];
    u16 wavesTransformY[240];

    u16 unkF34;
    u16 unkF36;
    u16 wavesTopOffset;

    s16 qWaveBgAffineYOffset;

    u8 introTransitionStep;
    u8 introPanUpVelocity;

    u16 animFrame;
    u16 startScreenTimer;
    u8 menuCursor;

    u8 unkF43;
    u16 unkF44[16];
} TitleScreen;

typedef struct {
    Sprite s;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    s16 unk38;
    s16 unk3A;
    u8 unk3C;
    u8 unk3D;
    u8 sequenceStep;
    u8 unk3F;
} BirdAnimation;

typedef struct {
    Sprite *s;
    u8 filler4[12];
    u8 animFrame;
    s16 unk12;
} MenuItemTransition;

typedef struct {
    Sprite sprites[8];
    SpriteTransform transforms[8];
    s16 posSequenceX[8];
    s16 posSequenceY[8];
    u16 unk200;
    s16 unk202;
    u8 unk204;
    u8 animFrame;
    u8 unk206;
    u8 unk207;
} LensFlare;

static void ResetWavesPalette(void);

static void InitTitleScreenBackgrounds(TitleScreen *);
static void InitTitleScreenUI(TitleScreen *);
static void WavesBackgroundAnim(TitleScreen *);

static void Task_IntroStartSegaLogoAnim(void);
static void Task_IntroShowSegaLogo(void);
static void Task_IntroStartSonicTeamLogoAnim(void);
static void Task_IntroFadeInSonicTeamLogoAnim(void);
static void Task_IntroShowSonicTeamLogo(void);

static void Task_IntroStartSkyTransition(void);
static void Task_IntroPanSkyAnim(void);
static void Task_IntroSkyAnim(void);
static void Task_IntroFadeInTitleScreenAnim(void);
static void Task_IntroWaitUntilTitleScreenFanfare(void);

static void SkipIntro(TitleScreen *);

static void ShowGameLogo(TitleScreen *);
static void Task_ShowPressStartMenu(void);
static void Task_PressStartMenuMain(void);
static void Task_StartPressedTransitionAnim(void);
static void Task_PlayModeMenuMain(void);
static void Task_SinglePlayerSelectedTransitionAnim(void);
static void Task_SinglePlayerMenuMain(void);

static void Task_StartTitleScreenDemo(void);
static void Task_HandleTitleScreenExit(void);
static void LoadTinyChaoGarden(void);

static void CreateMenuItemTransition(Sprite *, u8);

static void CreateLensFlareAnimation(void);
static void Task_LensFlareAnim(void);
static void LensFlareAnimEnd(void);

static void CreateBirdAnimation(u16, s16, u16, u16, u16);
static void Task_BirdAnim(void);
static void BirdAnimEnd(void);
# 189 "src/game/title_screen.c"
const TileInfo gPressStartTiles[] = {
    [0] = { 0x2E, 0x364, 0 }, [1] = { 0x2E, 0x364, 0 }, [2] = { 0x26, 0x36A, 0 },
    [3] = { 0x26, 0x36B, 0 }, [4] = { 0x2E, 0x36C, 0 }, [5] = { 0x1E, 0x36D, 0 },
    [6] = { 0x1E, 0x36E, 0 },
};

static const TileInfo sMenuTiles[] = {
    [0 + 0 *6] = { 0x14, 0x364, 0x5 },
    [1 + 0 *6] = { 0x14, 0x364, 0x6 },
    [2 + 0 *6] = { 0x14, 0x364, 0x1 },
    [3 + 0 *6] = { 0x14, 0x364, 0x2 },
    [4 + 0 *6] = { 0x10, 0x364, 0x3 },
    [5 + 0 *6] = { 0x1C, 0x364, 0x4 },

    [0 + 1 *6] = { 0x14, 0x364, 0x5 },
    [1 + 1 *6] = { 0x14, 0x364, 0x6 },
    [2 + 1 *6] = { 0x14, 0x364, 0x1 },
    [3 + 1 *6] = { 0x14, 0x364, 0x2 },
    [4 + 1 *6] = { 0x10, 0x364, 0x3 },
    [5 + 1 *6] = { 0x1C, 0x364, 0x4 },

    [0 + 2 *6] = { 0x22, 0x36A, 0x5 },
    [1 + 2 *6] = { 0x20, 0x36A, 0x6 },
    [2 + 2 *6] = { 0x1E, 0x36A, 0x1 },
    [3 + 2 *6] = { 0x20, 0x36A, 0x2 },
    [4 + 2 *6] = { 0x16, 0x36A, 0x3 },
    [5 + 2 *6] = { 0x2C, 0x36A, 0x4 },

    [0 + 3 *6] = { 0x1E, 0x36B, 0x5 },
    [1 + 3 *6] = { 0x22, 0x36B, 0x6 },
    [2 + 3 *6] = { 0x1A, 0x36B, 0x1 },
    [3 + 3 *6] = { 0x1C, 0x36B, 0x2 },
    [4 + 3 *6] = { 0x16, 0x36B, 0x3 },
    [5 + 3 *6] = { 0x2E, 0x36B, 0x4 },

    [0 + 4 *6] = { 0x22, 0x36C, 0x5 },
    [1 + 4 *6] = { 0x1A, 0x36C, 0x6 },
    [2 + 4 *6] = { 0x1A, 0x36C, 0x1 },
    [3 + 4 *6] = { 0x1C, 0x36C, 0x2 },
    [4 + 4 *6] = { 0x14, 0x36C, 0x3 },
    [5 + 4 *6] = { 0x2C, 0x36C, 0x4 },

    [0 + 5 *6] = { 0x16, 0x36D, 0x5 },
    [1 + 5 *6] = { 0x1E, 0x36D, 0x6 },
    [2 + 5 *6] = { 0x1E, 0x36D, 0x1 },
    [3 + 5 *6] = { 0x26, 0x36D, 0x2 },
    [4 + 5 *6] = { 0x16, 0x36D, 0x3 },
    [5 + 5 *6] = { 0x26, 0x36D, 0x4 },

    [0 + 6 *6] = { 0x26, 0x36E, 0x5 },
    [1 + 6 *6] = { 0x26, 0x36E, 0x6 },
    [2 + 6 *6] = { 0x1A, 0x36E, 0x1 },
    [3 + 6 *6] = { 0x28, 0x36E, 0x2 },
    [4 + 6 *6] = { 0x12, 0x36E, 0x3 },
    [5 + 6 *6] = { 0x26, 0x36E, 0x4 },


    { 0x28, 868, 7 },
};

static const u16 sWavesBrightnessPalette[] = INCBIN_U16("graphics/80E0EF4.gbapal");



static const u8 sWavesVerticalBrightnessGradiant[] = {
    (u8)(0.00000 * 240), (u8)(0.01875 * 240), (u8)(0.05000 * 240), (u8)(0.08750 * 240),
    (u8)(0.13125 * 240), (u8)(0.20000 * 240), (u8)(0.28750 * 240), (u8)(0.41250 * 240),
    (u8)(0.60000 * 240), (u8)(1.00000 * 240),
};

static const u8 sPanUpNextVelocityChangeFrame[] = { 60, 19, 10, 10, 255 };

static const u8 sMenuItemTransitionKeyFrames[] = {
    1, 2, 3, 4, 5, 6, 8, 10, 11, 13, 14, 16, 16, 16, 16, 16, 16, 16, 16, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2,
    2, 2, 2, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

static const u8 sBirdAnimModeSequence[] = {
    1, 1, 0, 1, 0, 0, 1, 1, 0, 0,
};




static const u8 sDemoLevels[] = {
    ((0)*(3 + 1)) + (0),
    ((0)*(3 + 1)) + (2),
    ((1)*(3 + 1)) + (0),
    ((1)*(3 + 1)) + (2),
    ((0)*(3 + 1)) + (0),
    ((0)*(3 + 1)) + (1),

    3,
    ((0)*(3 + 1)) + (2),
};

static const u16 sLensFlareSizes[] = {
    0, 1, 2, 3, 4, 5, 6, 6,
};

static const u16 sLensFlareStartPositions[][2] = {
    { 20, 10 }, { 36, 26 }, { 52, 42 }, { 68, 58 }, { 92, 82 }, { 124, 114 }, { 148, 138 }, { 180, 170 },
};

void CreateTitleScreen(void)
{
    struct Task *t;
    TitleScreen *titleScreen;
    ScreenFade *fade;
    BgPaletteEffectState *bgEffect;
    s32 i, val;
    s16 denom;

    t = TaskCreate(Task_IntroStartSegaLogoAnim, sizeof(TitleScreen), 0x1000, 0, 
# 303 "src/game/title_screen.c" 3 4
                                                                               ((void *)0)
# 303 "src/game/title_screen.c"
                                                                                   );
    titleScreen = (void *)((t)->data);

    titleScreen->unkF34 = ((s32)((2)*256));
    titleScreen->unkF36 = ((s32)((1)*256));
    titleScreen->wavesTopOffset = 2;

    titleScreen->menuCursor = 0;
    titleScreen->startScreenTimer = 0;

    titleScreen->animFrame = 0;
    titleScreen->qWaveBgAffineYOffset = ((s32)((0.125)*256));

    titleScreen->introTransitionStep = 0;
    titleScreen->introPanUpVelocity = 1;


    for (i = 0; i < 240; i++) {
        denom = ({(((i + 1) * 8) != 0) ? ((s32)(((s32)((256)*256))) / (s32)((i + 1) * 8)) : 0;});

        val = ((titleScreen->unkF34 * denom) >> 8);


        titleScreen->wavesTransformPA[i] = val;


        titleScreen->wavesTransformY[i] = ({((val) != 0) ? ((s32)(((s32)((256)*256))) / (s32)(val)) : 0;});
    };

    fade = &titleScreen->unk270;
    fade->window = 1;
    fade->brightness = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->speed = 256;
    fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
    fade->bldAlpha = 0;

    bgEffect = &titleScreen->bgEffect;
    bgEffect->unk0 = 0;
    bgEffect->cursor = 0;
    bgEffect->offset = titleScreen->wavesTopOffset;
    bgEffect->bgPalId = 14;
    bgEffect->pattern = sWavesVerticalBrightnessGradiant;
    bgEffect->palette = sWavesBrightnessPalette;
    bgEffect->unk36 = 0;

    gBgPaletteEffects.state = bgEffect;
    gBgPaletteEffects.background = &titleScreen->unk0;

    InitTitleScreenBackgrounds(titleScreen);
    m4aSongNumStart(1);
    gFlags |= 0x8000;

    UpdateScreenFade(fade);
}

static void CreateTitleScreenWithoutIntro(TitleScreen *titleScreen)
{
    ScreenFade *fade;
    Background *bg0, *config40;



    titleScreen->unkF34 = ((s32)((10)*256));

    titleScreen->unkF36 = 3;
    titleScreen->wavesTopOffset = 2;
    titleScreen->menuCursor = 0;
    titleScreen->startScreenTimer = 0;
    titleScreen->animFrame = 0;
    titleScreen->qWaveBgAffineYOffset = ((s32)((0.125)*256));
    titleScreen->introTransitionStep = 0;
    titleScreen->introPanUpVelocity = 1;

    fade = &titleScreen->unk270;
    fade = &titleScreen->unk270;
    fade->window = 1;
    fade->brightness = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->speed = 0x200;
    fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
    fade->bldAlpha = 0;

    InitTitleScreenUI(titleScreen);


    gDispCnt = 0;
    gDispCnt |= 0x0001 | 0x0040 | 0x0200 | 0x0400 | 0x1000;

    gBgCntRegs[0] = (0) | ((1) << 2) | ((31) << 8) | 0x0000;
    gBgCntRegs[1] = (2) | ((2) << 2) | ((29) << 8) | 0x8000 | 0x0000;
    gBgCntRegs[2] = (1) | ((0) << 2) | ((26) << 8) | 0x4000 | 0x0080;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)&VRAM[0], (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((0x10000)/(32/8)))); };
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 32; });;
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;

    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 512;

    bg0 = &titleScreen->unk0;
    bg0->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (0)));
    bg0->graphics.anim = 0;
    bg0->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
    bg0->unk18 = 0;
    bg0->unk1A = ((0) << 6);
    if (gLoadedSaveGame->language < 2) {
        bg0->tilemapId = 264;
    } else {
        bg0->tilemapId = 265;
    }
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 208 / 8;
    bg0->targetTilesY = 80 / 8;
    bg0->paletteOffset = 0;
    bg0->flags = 0x4 | (2);

    DrawBackground(bg0);

    gDispCnt &= ~0x0100;
    gDispCnt |= 0x0200 | 0x0400;

    gBgCntRegs[2] &= ~0x2000;

    gBldRegs.bldCnt = (0 << 6);
    gFlags &= ~0x8000;

    config40 = &titleScreen->unk40;
    config40->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (16)));
    config40->graphics.anim = 0;
    config40->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (29)));
    config40->unk18 = 0;
    config40->unk1A = 0;
    config40->tilemapId = 261;
    config40->unk1E = 0;
    config40->unk20 = 0;
    config40->unk22 = 0;
    config40->unk24 = 0;
    config40->targetTilesX = 256 / 8;
    config40->targetTilesY = 512 / 8;
    config40->paletteOffset = 0;
    config40->flags = (1);

    DrawBackground(config40);

    m4aSongNumStart(2);

    UpdateScreenFade(&titleScreen->unk270);
}


static void InitTitleScreenBackgrounds(TitleScreen *titleScreen)
{
    Background *bg80, *bg0;

    gDispCnt = 0x0001;
    gDispCnt |= 0x0040 | 0x0400 | 0x1000;

    gBgCntRegs[0] = 0x0000 | 0x0000 | ((31) << 8) | ((1) << 2) | (0);
    gBgCntRegs[1] = 0x0000 | 0x8000 | ((29) << 8) | ((2) << 2) | (2);
    gBgCntRegs[2] = 0x0080 | 0x4000 | 0x2000 | ((26) << 8) | ((0) << 2) | (1);
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 32; });;
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)&VRAM[0], (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((0x10000)/(32/8)))); };

    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 512;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    bg80 = &titleScreen->introSonicLogo;

    bg80->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (8)));
    bg80->graphics.anim = 0;
    bg80->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (31)));
    bg80->unk18 = 0;
    bg80->unk1A = ((0) << 6);
    bg80->tilemapId = 96;
    bg80->unk1E = 0;
    bg80->unk20 = 0;
    bg80->unk22 = 0;
    bg80->unk24 = 0;
    bg80->targetTilesX = 426 / 8;
    bg80->targetTilesY = 240 / 8;
    bg80->paletteOffset = 0;
    bg80->flags = 0;

    DrawBackground(bg80);

    bg0 = &titleScreen->unk0;

    bg0->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (0)));
    bg0->graphics.anim = 0;
    bg0->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
    bg0->unk18 = 0;
    bg0->unk1A = ((0) << 6);
    bg0->tilemapId = 262;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 256 / 8;
    bg0->targetTilesY = 256 / 8;
    bg0->paletteOffset = 0;
    bg0->flags = 0x4 | (2);

    DrawBackground(bg0);
}

static void InitTitleScreenUI(TitleScreen *titleScreen)
{

    s8 language;
    u32 menuItemId;
    void *objAddr;
    Sprite *s;


    language = gLoadedSaveGame->language;
    objAddr = (void *)&VRAM[0x10000];


    s = &titleScreen->unkC0;

    s->graphics.dest = objAddr;
    objAddr += (90 * 32);


    s->graphics.anim = 830;



    s->variant = 1;

    s->prevVariant = -1;





    s->x = 426 - 136;

    s->y = 240 - 30;
    s->graphics.size = 0;
    s->oamFlags = ((4) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &titleScreen->unkF0;

    s->graphics.dest = objAddr;
    objAddr += (gPressStartTiles[language].numTiles * 32);


    s->graphics.anim = gPressStartTiles[language].anim;
    s->variant = gPressStartTiles[language].variant;
    s->prevVariant = -1;
    s->x = (426 / 2);
    s->y = (240 / 2) + 30;
    s->graphics.size = 0;
    s->oamFlags = ((3) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    for (menuItemId = 0; menuItemId < (sizeof(titleScreen->menuItems) / sizeof((titleScreen->menuItems)[0])); menuItemId++) {
        s = &titleScreen->menuItems[menuItemId];

        s->graphics.dest = objAddr;
        objAddr += (sMenuTiles[menuItemId + language *6].numTiles * 32);

        s->graphics.anim = sMenuTiles[menuItemId + language *6].anim;
        s->variant = sMenuTiles[menuItemId + language *6].variant;
        s->prevVariant = -1;
        s->x = (426 / 2);



        if (menuItemId < (2 + 0)) {

            s->y = ((menuItemId - 0) * 18) + (240 / 2) + 16;
        } else if (gLoadedSaveGame->chaoGardenUnlocked) {

            s->y = ((menuItemId - 2) * 16) + (240 / 2) + 16;
        } else {

            s->y = ((menuItemId - 2) * 18) + (240 / 2) + 20;
        }

        s->graphics.size = 0;
        s->oamFlags = ((3) << 6);
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    };

    s = &titleScreen->unk240;
    s->graphics.dest = objAddr;
    s->graphics.anim = sMenuTiles[(sizeof(sMenuTiles) / sizeof((sMenuTiles)[0])) - 1].anim;
    s->variant = sMenuTiles[(sizeof(sMenuTiles) / sizeof((sMenuTiles)[0])) - 1].variant;
    s->prevVariant = -1;
    s->x = (426 / 2);
    s->y = (240 / 2);
    s->graphics.size = 0;
    s->oamFlags = ((30) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = 0x3000;
    UpdateSpriteAnimation(s);
}

static void Task_IntroFadeInSegaLogoAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    gBldRegs.bldAlpha = (((16 - (titleScreen->animFrame)) << 8) | (titleScreen->animFrame));

    if (titleScreen->animFrame >= 16) {
        titleScreen->animFrame = 0;
        gBldRegs.bldAlpha = (((16 - (16)) << 8) | (16));

        gBgScrollRegs[0][0] = 0;
        gBgScrollRegs[0][1] = 0;
        gCurTask->main = Task_IntroShowSegaLogo;
    }

    titleScreen->animFrame++;
}

static void Task_IntroFadeOutSegaLogoAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    gBldRegs.bldAlpha = (((titleScreen->animFrame * 2) << 8) | (16 - (titleScreen->animFrame * 2)));

    if (titleScreen->animFrame >= 8) {
        gDispCnt &= ~0x0100;
        gBldRegs.bldAlpha = (((16) << 8) | (16 - (16)));
        titleScreen->animFrame = 0;
        gFlags &= ~0x8000;
        gCurTask->main = Task_IntroStartSonicTeamLogoAnim;
    }

    titleScreen->animFrame++;
}

static void Task_IntroStartSonicTeamLogoAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    Background *bg;

    WavesBackgroundAnim(titleScreen);

    if (titleScreen->animFrame == 1) {

        bg = &titleScreen->introSonicLogo;
        bg->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (8)));
        bg->graphics.anim = 0;
        bg->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (31)));
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = 97;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 426 / 8;
        bg->targetTilesY = 240 / 8;
        bg->paletteOffset = 0;
        bg->flags = 0x10;
        DrawBackground(bg);
    }

    if (titleScreen->animFrame > 2) {
        titleScreen->animFrame = 0;
        gDispCnt |= 0x0100;
        gCurTask->main = Task_IntroFadeInSonicTeamLogoAnim;
    }

    titleScreen->animFrame++;
}

static void Task_IntroFadeInSonicTeamLogoAnim(void)
{

    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    gBldRegs.bldAlpha = (((16 - (titleScreen->animFrame)) << 8) | (titleScreen->animFrame));

    if (titleScreen->animFrame >= 16) {
        titleScreen->animFrame = 0;
        gBldRegs.bldAlpha = (((16 - (16)) << 8) | (16));
        gBgScrollRegs[0][0] = 0;
        gBgScrollRegs[0][1] = 0;

        gCurTask->main = Task_IntroShowSonicTeamLogo;
    }

    titleScreen->animFrame++;
}

static void Task_IntroFadeOutSonicTeamLogoAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    gBldRegs.bldAlpha = (((titleScreen->animFrame * 2) << 8) | (16 - (titleScreen->animFrame * 2)));

    if (titleScreen->animFrame >= 8) {
        gCurTask->main = Task_IntroStartSkyTransition;
        titleScreen->animFrame = 0;
        gDispCnt &= ~0x0100;
        gBgScrollRegs[0][0] = 0;
        gBgScrollRegs[0][1] = 0;
    }

    titleScreen->animFrame++;
}

static void Task_IntroStartSkyTransition(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    Background *config40;
    WavesBackgroundAnim(titleScreen);

    if (gPressedKeys & (0x0001 | 0x0008)) {
        SkipIntro(titleScreen);
        return;
    }



    if (titleScreen->animFrame == 59) {
        config40 = &titleScreen->unk40;
        config40->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (16)));
        config40->graphics.anim = 0;
        config40->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (29)));
        config40->unk18 = 0;
        config40->unk1A = 0;
        config40->tilemapId = 261;
        config40->unk1E = 0;
        config40->unk20 = 0;
        config40->unk22 = 0;
        config40->unk24 = 0;
        config40->targetTilesX = 0x20;
        config40->targetTilesY = 0x40;
        config40->paletteOffset = 0;
        config40->flags = (1);
        DrawBackground(config40);
    }



    if (titleScreen->animFrame > 140) {
        gCurTask->main = Task_IntroPanSkyAnim;
        titleScreen->animFrame = 0;
        gDispCnt |= 0x0200;
        gBldRegs.bldAlpha = (((16) << 8) | (16 - (16)));
        gBldRegs.bldCnt = (1 << 0) | (1 << 6) | (1 << 9);
        CreateBirdAnimation(0x7c, 0xffc4, 0, 0xffdf, 0);
        CreateBirdAnimation(0xb4, 0xffe8, 3, 0x20, 0);
    }

    titleScreen->animFrame++;
}

static void Task_IntroPanSkyAnim(void)
{
    Background *bg0;
    TitleScreen *titleScreen = (void *)((gCurTask)->data);

    if (gPressedKeys & (0x0001 | 0x0008)) {
        SkipIntro(titleScreen);
        return;
    }

    gBgScrollRegs[1][1] -= titleScreen->introPanUpVelocity;
    if (gBgScrollRegs[1][1] < 175) {
        gBgScrollRegs[1][1] = 175;
    }

    if (gBgScrollRegs[1][1] < 351) {
        gDispCnt &= ~0x0400;
        gDispCnt &= ~0x4000;
    } else {
        titleScreen->wavesTopOffset += titleScreen->introPanUpVelocity;
        WavesBackgroundAnim(titleScreen);
    }



    if (titleScreen->animFrame == sPanUpNextVelocityChangeFrame[titleScreen->introTransitionStep]) {
        titleScreen->animFrame = 0;
        titleScreen->introPanUpVelocity++;
        titleScreen->introTransitionStep++;
    }



    if (titleScreen->animFrame > 60 && titleScreen->introTransitionStep > 2) {
        gBgCntRegs[2] &= ~0x2000;

        gBgSprites_Unknown1[0] = 2;
        gBgSprites_Unknown2[0][0] = 0;
        gBgSprites_Unknown2[0][1] = 0;
        gBgSprites_Unknown2[0][2] = 0x20;
        gBgSprites_Unknown2[0][3] = 0x20;

        gBldRegs.bldCnt = 0;

        bg0 = &titleScreen->unk0;
        bg0->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (8)));
        bg0->graphics.anim = 0;
        bg0->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (31)));
        bg0->unk18 = 0;
        bg0->unk1A = 0;
        bg0->tilemapId = 263;
        bg0->unk1E = 0;
        bg0->unk20 = 0;
        bg0->unk22 = 0;
        bg0->unk24 = 0;
        bg0->targetTilesX = 7;
        bg0->targetTilesY = 0x10;
        bg0->paletteOffset = 0;
        bg0->flags = 0x10;
        DrawBackground(bg0);

        gBgScrollRegs[0][1] = 79;
        gCurTask->main = Task_IntroSkyAnim;

        titleScreen->animFrame = 0;
        gWinRegs[1] = (((0) << 16) | (426));
        gWinRegs[3] = (((0) << 16) | (240));
        gWinRegs[4] |= 0x3F00;
        gWinRegs[5] |= 0x3F;

        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0;

        gDispCnt |= 0x4000;
        (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;
    }
    titleScreen->animFrame++;
}

static void Task_IntroSkyAnim(void)
{
    Background *bg0;
    TitleScreen *titleScreen = (void *)((gCurTask)->data);

    if (gPressedKeys & (0x0001 | 0x0008)) {
        SkipIntro(titleScreen);
        return;
    }


    if (titleScreen->animFrame == 2) {
        CreateLensFlareAnimation();
    }


    if (titleScreen->animFrame & 1) {
        sub_8003EE4(0, 0x100, 0x100, 0, 0, 0, 10, gBgAffineRegs);
        gDispCnt |= 0x0100;
    }


    if (titleScreen->introTransitionStep > 2 && (u16)(titleScreen->animFrame - 20) < 119) {
        gDispCnt &= 0xFEFF;
        gDispCnt |= 0x4000;

        gWinRegs[1] = (((0) << 16) | (426));
        gWinRegs[3] = (((0) << 16) | (240));
        gWinRegs[4] |= 0x3F00;
        gWinRegs[5] |= 0x3F;

        gBldRegs.bldCnt = 0x3FBF;

        if (titleScreen->animFrame > 29) {
            gBldRegs.bldY = 16 - ((titleScreen->animFrame - 30) >> 3);
        } else {
            gBldRegs.bldY = 16;
        }

        if (titleScreen->animFrame == 21) {
            gBgScrollRegs[1][1] = 0;
        }
    }

    if (titleScreen->animFrame > 138) {

        bg0 = &titleScreen->unk0;


        { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)VRAM, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((0x4000)/(32/8)))); };

        gBgSprites_Unknown1[0] = 2;
        gBgSprites_Unknown2[0][0] = 0;
        gBgSprites_Unknown2[0][1] = 0;
        gBgSprites_Unknown2[0][2] = 0xff;
        gBgSprites_Unknown2[0][3] = 0x20;
        ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;

        bg0->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (0)));
        bg0->graphics.anim = 0;
        bg0->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
        bg0->unk18 = 0;
        bg0->unk1A = 0;

        if (gLoadedSaveGame->language < 2) {
            bg0->tilemapId = 264;
        } else {
            bg0->tilemapId = 265;
        }

        bg0->unk1E = 0;
        bg0->unk20 = 0;
        bg0->unk22 = 0;
        bg0->unk24 = 0;
        bg0->targetTilesX = 26;
        bg0->targetTilesY = 10;
        bg0->paletteOffset = 0;
        bg0->flags = 0x4 | (2);

        DrawBackground(bg0);

        gBgCntRegs[2] &= ~0x2000;
        gCurTask->main = Task_IntroFadeInTitleScreenAnim;

        gDispCnt |= 0x0400;
        gDispCnt &= ~0x0100;

        gBldRegs.bldAlpha = 0x1000;
        gBldRegs.bldCnt = 0x244;

        titleScreen->animFrame = 0;
        gBgScrollRegs[1][1] = 0;

        InitTitleScreenUI(titleScreen);
    }
    titleScreen->animFrame++;
}

static void Task_IntroFadeInTitleScreenAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);

    if (gPressedKeys & (0x0001 | 0x0008)) {
        SkipIntro(titleScreen);
        return;
    }

    gBldRegs.bldAlpha = (((16 - (titleScreen->animFrame >> 2)) << 8) | (titleScreen->animFrame >> 2));

    if (titleScreen->animFrame > 64) {
        gBldRegs.bldCnt = 0;
        titleScreen->animFrame = 0;
        gCurTask->main = Task_IntroWaitUntilTitleScreenFanfare;
    }

    titleScreen->animFrame++;
    ShowGameLogo(titleScreen);
}

static void Task_PressStartMenuMain(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);


    if (titleScreen->animFrame < 40) {
        DisplaySprite(&titleScreen->unkF0);
    }

    titleScreen->animFrame++;

    if (titleScreen->animFrame > 80) {
        titleScreen->animFrame = 0;
    }
    DisplaySprite(&titleScreen->unkC0);

    if (gPressedKeys & 0x0008) {
        m4aSongNumStart(106);
        titleScreen->animFrame = 0;
        titleScreen->menuCursor = (0 - 0);
        gCurTask->main = Task_StartPressedTransitionAnim;
    }

    ShowGameLogo(titleScreen);

    titleScreen->startScreenTimer++;
    if (titleScreen->startScreenTimer == ((15)*60)) {

        gCurTask->main = Task_StartTitleScreenDemo;
    }
}

static void Task_StartPressedTransitionAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);


    if ((titleScreen->animFrame & 7) > 3) {
        DisplaySprite(&titleScreen->unkF0);
    }
    titleScreen->animFrame++;

    DisplaySprite(&titleScreen->unkC0);


    if (titleScreen->animFrame == 10) {
        CreateMenuItemTransition(&titleScreen->menuItems[(0 - 0)], 1);
        CreateMenuItemTransition(&titleScreen->menuItems[(1 - 0)], 1);
    }

    if (titleScreen->animFrame > 16) {
        titleScreen->animFrame = 0;
        titleScreen->menuCursor = (0 - 0);
        gCurTask->main = Task_PlayModeMenuMain;
    }

    ShowGameLogo(titleScreen);
}

static inline void PlayModeMenuHighlightFocused(TitleScreen *titleScreen)
{
    Sprite *menuItem;
    u8 menuIndex;

    for (menuIndex = 0; menuIndex < 2; menuIndex++) {
        menuItem = &titleScreen->menuItems[menuIndex ^ 1];
        menuItem->palId = (menuIndex ^ titleScreen->menuCursor);
        DisplaySprite(menuItem);
    };
}

static void Task_PlayModeMenuMain(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    ScreenFade *fade;

    DisplaySprite(&titleScreen->unkC0);
    ShowGameLogo(titleScreen);

    PlayModeMenuHighlightFocused(titleScreen);


    if (gRepeatedKeys & (0x0040 | 0x0080)) {
        if (titleScreen->menuCursor != (0 - 0)) {
            titleScreen->menuCursor = (0 - 0);
        } else {
            titleScreen->menuCursor = (1 - 0);
        }

        m4aSongNumStart(108);
    }


    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);

        if (titleScreen->menuCursor == (0 - 0)) {
            titleScreen->menuItems[1].x = (426 / 2);
            CreateMenuItemTransition(&titleScreen->menuItems[1], 0);

            titleScreen->animFrame = (2 - 2);

            gCurTask->main = Task_SinglePlayerSelectedTransitionAnim;
        } else {
            fade = &titleScreen->unk270;
            CreateMenuItemTransition(&titleScreen->menuItems[0], 0);

            fade->bldCnt = ((3 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
            fade->brightness = 0;
            fade->speed = 0x100;
            fade->flags = 1;

            titleScreen->menuCursor = 4;
            gCurTask->main = Task_HandleTitleScreenExit;
        }
        return;
    }


    if (gPressedKeys & 0x0002) {
        titleScreen->startScreenTimer = 0;
        m4aSongNumStart(107);
        gCurTask->main = Task_PressStartMenuMain;
    }
}

static void Task_SinglePlayerSelectedTransitionAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    Sprite *menuItems = titleScreen->menuItems;


    if ((titleScreen->animFrame & 7) > 3) {
        DisplaySprite(&menuItems[0]);
    }
    titleScreen->animFrame++;

    DisplaySprite(&titleScreen->unkC0);



    if (gPressedKeys & 0x0002) {
        titleScreen->menuCursor = (0 - 0);
        m4aSongNumStart(107);
        gCurTask->main = Task_PlayModeMenuMain;
    }


    if (titleScreen->animFrame == 8) {
        CreateMenuItemTransition(&menuItems[2], 1);
        CreateMenuItemTransition(&menuItems[3], 1);
        CreateMenuItemTransition(&menuItems[4], 1);

        if (gLoadedSaveGame->chaoGardenUnlocked) {
            CreateMenuItemTransition(&menuItems[5], 1);
        }
    }


    if (titleScreen->animFrame > 12) {
        titleScreen->animFrame = 0;
        titleScreen->menuCursor = (2 - 2);
        gCurTask->main = Task_SinglePlayerMenuMain;
    }

    ShowGameLogo(titleScreen);
}

static inline void SinglePlayerMenuHighlightFocused(TitleScreen *titleScreen, u8 numMenuItems)
{
    Sprite *menuItem;
    u8 menuIndex;

    for (menuIndex = 0; menuIndex < numMenuItems; menuIndex++) {
        menuItem = &titleScreen->menuItems[(2 + menuIndex)];
        if (titleScreen->menuCursor == menuIndex) {
            menuItem->palId = 1;
        } else {
            menuItem->palId = 0;
        }
        DisplaySprite(menuItem);
    }
};

static void Task_SinglePlayerMenuMain(void)
{
    TitleScreen *titleScreen;
    ScreenFade *fade;
    u8 menuIndex;

    u8 numMenuItems = 3;
    if (gLoadedSaveGame->chaoGardenUnlocked) {
        numMenuItems = 4;
    }

    titleScreen = (void *)((gCurTask)->data);
    SinglePlayerMenuHighlightFocused(titleScreen, numMenuItems);

    ShowGameLogo(titleScreen);


    if (gRepeatedKeys & 0x0040) {
        if (titleScreen->menuCursor > 0) {
            titleScreen->menuCursor--;
        } else {
            titleScreen->menuCursor = numMenuItems - 1;
        }
        m4aSongNumStart(108);
    } else if (gRepeatedKeys & 0x0080) {
        if (titleScreen->menuCursor < (numMenuItems - 1)) {
            titleScreen->menuCursor++;
        } else {
            titleScreen->menuCursor = 0;
        }
        m4aSongNumStart(108);
    }

    if (gPressedKeys & 0x0002) {
        titleScreen->menuCursor = (0 - 0);
        m4aSongNumStart(107);
        gCurTask->main = Task_PlayModeMenuMain;
        return;
    }

    if (gPressedKeys & 0x0001) {
        fade = &titleScreen->unk270;
        fade->bldCnt = ((3 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
        if (titleScreen->menuCursor == (5 - 2)) {
            fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
        }
        fade->speed = 0x100;
        fade->brightness = 0;
        fade->flags = (1 << 0);

        for (menuIndex = 0; menuIndex < numMenuItems; menuIndex++) {
            if (menuIndex != titleScreen->menuCursor) {
                CreateMenuItemTransition(&titleScreen->menuItems[(2 + menuIndex)], 0);
            }
        }

        m4aSongNumStart(106);
        gCurTask->main = Task_HandleTitleScreenExit;
    }
}

static void Task_HandleTitleScreenExit(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    Sprite *menuItem;
    u8 i;

    if (UpdateScreenFade(&titleScreen->unk270) == 1) {
        gStageFlags = 0x0000;
        gCurrentLevel = ((0)*(3 + 1)) + (0);
        gSelectedCharacter = CHARACTER_SONIC;

        switch (titleScreen->menuCursor) {
            case (2 - 2):
                gGameMode = 0;
                ApplyGameStageSettings();

                if (gLoadedSaveGame->unlockedCharacters & (1 << (CHARACTER_AMY))) {
                    CreateCharacterSelectionScreen(CHARACTER_SONIC, 1);
                } else {
                    CreateCharacterSelectionScreen(CHARACTER_SONIC, 0);
                }
                break;
            case (3 - 2):
                ApplyGameStageSettings();
                gCurrentLevel = ((0)*(3 + 1)) + (0);
                gSelectedCharacter = CHARACTER_SONIC;
                gGameMode = 1;
                CreateTimeAttackModeSelectionScreen();
                break;
            case (4 - 2):
                gGameMode = 0;
                CreateOptionsScreen(0);
                break;
            case (5 - 2):

                CreateUnusedLevelSelect();



                break;
            case 4:
                gGameMode = 3;
                ApplyGameStageSettings();
                if (gLoadedSaveGame->playerName[0] != 0xFFFF) {
                    CreateMultiplayerModeSelectScreen();
                } else {


                    CreateNewProfileNameScreen(0);
                }
                break;
        }
        TaskDestroy(gCurTask);
    } else {
        ShowGameLogo(titleScreen);
        if (titleScreen->menuCursor == 4) {



            for (i = 0; i < 1; i++) {
                menuItem = &titleScreen->menuItems[i ^ 1];
                menuItem->palId = i ^ 1;
                if ((++titleScreen->animFrame & 7) > 3) {
                    DisplaySprite(menuItem);
                }
            }
            DisplaySprite(&titleScreen->unkC0);
        } else {
            menuItem = &titleScreen->menuItems[(2 + titleScreen->menuCursor)];
            menuItem->palId = 1;
            if ((++titleScreen->animFrame & 7) > 3) {
                DisplaySprite(menuItem);
            }
        }
    }
}

static void Task_ShowTitleScreenIntroSkipped(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    Background *bg0 = &titleScreen->unk0;
    Background *config40;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)&VRAM[0], (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((0x10000)/(32/8)))); };
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;

    bg0->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (0)));
    bg0->graphics.anim = 0;
    bg0->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
    bg0->unk18 = 0;
    bg0->unk1A = 0;


    if (gLoadedSaveGame->language < 2) {
        bg0->tilemapId = 264;
    } else {
        bg0->tilemapId = 265;
    }

    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 26;
    bg0->targetTilesY = 10;
    bg0->paletteOffset = 0;
    bg0->flags = 0x4 | (2);
    DrawBackground(bg0);

    config40 = &titleScreen->unk40;
    config40->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (16)));
    config40->graphics.anim = 0;
    config40->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (29)));
    config40->unk18 = 0;
    config40->unk1A = 0;
    config40->tilemapId = 261;
    config40->unk1E = 0;
    config40->unk20 = 0;
    config40->unk22 = 0;
    config40->unk24 = 0;
    config40->targetTilesX = 0x20;
    config40->targetTilesY = 0x40;
    config40->paletteOffset = 0;
    config40->flags = (1);
    DrawBackground(config40);

    gDispCnt &= ~0x100;
    gDispCnt |= 0x600;
    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[2] &= ~0x2000;
    gBldRegs.bldCnt = 0;
    gFlags &= ~0x8000;

    UpdateScreenFade(&titleScreen->unk270);
    m4aSongNumStart(2);

    ShowGameLogo(titleScreen);
    gCurTask->main = Task_ShowPressStartMenu;

    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;
}

static void Task_JumpToPlayModeMenu(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    PlayModeMenuHighlightFocused(titleScreen);

    DisplaySprite(&titleScreen->unkC0);
    ShowGameLogo(titleScreen);

    if (UpdateScreenFade(&titleScreen->unk270) == 1) {
        m4aSongNumStart(201);
        titleScreen->animFrame = 0;
        gCurTask->main = Task_PlayModeMenuMain;
    }
}

static void Task_JumpToSinglePlayerMenu(void)
{
    TitleScreen *titleScreen;
    ScreenFade *fade;

    u8 numMenuItems = 3;
    if (gLoadedSaveGame->chaoGardenUnlocked) {
        numMenuItems = 4;
    }

    titleScreen = (void *)((gCurTask)->data);
    SinglePlayerMenuHighlightFocused(titleScreen, numMenuItems);

    ShowGameLogo(titleScreen);

    if (UpdateScreenFade(&titleScreen->unk270) == 1) {
        m4aSongNumStart(201);
        titleScreen->animFrame = 0;
        gCurTask->main = Task_SinglePlayerMenuMain;
    }
}

static void WavesBackgroundAnim(TitleScreen *titleScreen)
{
    u32 i;
    u32 *affine;
    s32 line;

    (*(vu16 *)(REG_BASE + 0x128)) &= ~0x4000;
    gDispCnt |= 0x4000;
    gWinRegs[1] = (((0) << 16) | (426));
    gWinRegs[3] = ((((titleScreen->wavesTopOffset - 2)) << 16) | (240));
    gWinRegs[4] |= 0x3F00;
    gWinRegs[5] &= 0x13;

    titleScreen->qWaveBgAffineYOffset -= ((s32)((3)*256));
    if (titleScreen->qWaveBgAffineYOffset < 0) {
        titleScreen->qWaveBgAffineYOffset = ((s32)((30)*256));
    }

    gVBlankCallbacks[gNumVBlankCallbacks++] = ResetWavesPalette;
    gFlags |= 0x10;

    titleScreen->bgEffect.offset = (titleScreen->wavesTopOffset - 2);

    gHBlankCallbacks[gNumHBlankCallbacks++] = BgPaletteEffectGradient;

    gFlags |= 0x8;
    gFlags |= 0x4;
    gHBlankCopySize = sizeof(BgAffineReg);
    gHBlankCopyTarget = (void *)(REG_BASE + 0x20);

    gBgOffsetsHBlankPrimary = titleScreen->wavesAffineBuf;
    affine = (void *)titleScreen->wavesAffineBuf;
    for (i = 0, line = 0; i < 240; i++) {
        s32 temp, qPA;
        if (titleScreen->wavesTopOffset <= i) {
            qPA = titleScreen->wavesTransformPA[i - titleScreen->wavesTopOffset];
            *affine++ = qPA;
            *affine++ = 0;


            temp = titleScreen->wavesTransformY[i - titleScreen->wavesTopOffset];
            temp = ((int)((temp * ((s32)((426)*256))) >> 8));


            temp = (((s32)((426)*256)) - (temp)) >> 1;
            temp = ((temp * qPA) >> 8);

            if (temp >= ((s32)((524288)*256))) {
                temp = ((s32)((524288)*256)) - 1;
            }
            *affine++ = -temp;
            if (((((s32)((line) << 8)) * qPA) >> 8) >= ((s32)((31.5)*256))) {
                line = 0;


                temp = ((((s32)((line) << 8)) * qPA) >> 8) + titleScreen->qWaveBgAffineYOffset;
                *affine++ = temp;
            } else {
                temp = ((((s32)((line) << 8)) * qPA) >> 8) + titleScreen->qWaveBgAffineYOffset;
                *affine++ = temp;
            }
            line++;
        } else {
            *affine++ = 0;
            *affine++ = 0;
            *affine++ = 0;

            *affine++ = ((s32)((({ i + 512; }) - titleScreen->wavesTopOffset)*256));
        }
    }
}

__attribute__((unused)) static void sub_808CD64(TitleScreen *titleScreen)
{
    u16 last = titleScreen->unkF44[6];
    titleScreen->unkF44[6] = titleScreen->unkF44[5];
    titleScreen->unkF44[5] = titleScreen->unkF44[4];
    titleScreen->unkF44[4] = titleScreen->unkF44[3];
    titleScreen->unkF44[3] = titleScreen->unkF44[2];
    titleScreen->unkF44[2] = titleScreen->unkF44[1];
    titleScreen->unkF44[1] = last;
}

__attribute__((unused)) static void sub_808CDB0(TitleScreen *titleScreen, s8 index)
{

    u16 *pal = (u16 *)((u16*)&PLTT[0]) + (index * 16);

    titleScreen->unkF44[0] = pal[0];
    titleScreen->unkF44[1] = pal[1];
    titleScreen->unkF44[2] = pal[2];
    titleScreen->unkF44[3] = pal[3];
    titleScreen->unkF44[4] = pal[4];
    titleScreen->unkF44[5] = pal[5];
    titleScreen->unkF44[6] = pal[6];
}

static void CreateBirdAnimation(u16 x, s16 y, u16 startStep, u16 p4, u16 p5)
{
    struct Task *t = TaskCreate(Task_BirdAnim, sizeof(BirdAnimation), 0x2000, 0, 0);
    BirdAnimation *animation = (void *)((t)->data);
    Sprite *s = &animation->s;

    s->graphics.dest = VramMalloc(3);
    s->graphics.anim = 831;
    s->variant = 0;
    s->prevVariant = -1;
    s->x = x;
    s->y = y;
    s->graphics.size = 0;
    s->oamFlags = ((3) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(&animation->s);

    animation->unk30 = gBgScrollRegs[1][0];
    animation->unk32 = gBgScrollRegs[1][1];
    animation->unk38 = x * 128;
    animation->unk3A = y * 128;
    animation->unk34 = p4;
    animation->unk36 = p5;
    animation->unk3C = 0;
    animation->unk3D = 0;
    animation->sequenceStep = startStep;
}

static void Task_BirdAnim(void)
{
    BirdAnimation *animation = (void *)((gCurTask)->data);
    Sprite *s = &animation->s;
    u16 temp;

    switch (animation->unk3C) {
        case 0:
            animation->unk3A += 0x30;
            break;
        case 1:
            animation->unk3A -= gSineTable[animation->unk3D * 16] >> 10;
            break;
    }

    animation->unk38 += animation->unk34;
    animation->unk3A += animation->unk36;

    if (animation->unk38 & 0x8000) {
        temp = animation->unk38 >> 7 | 0xE000;
    } else {
        temp = (animation->unk38) >> 7;
    }
    s->x = (temp << 0x10 >> 0x10) + animation->unk30 - gBgScrollRegs[1][0];

    if (animation->unk3A & 0x8000) {
        temp = animation->unk3A >> 7 | 0xE000;
    } else {
        temp = animation->unk3A >> 7;
    }
    s->y = (temp << 0x10 >> 0x10) + animation->unk32 - gBgScrollRegs[1][1];

    UpdateSpriteAnimation(s);
    DisplaySprite(s);




    if ((u16)(s->x + 64) > 368) {
        BirdAnimEnd();
    }

    if ((u16)(s->y + 64) > 308) {
        BirdAnimEnd();
    }


    if (++animation->unk3D > 15) {
        animation->unk3C = sBirdAnimModeSequence[animation->sequenceStep];
        animation->sequenceStep++;
        animation->unk3D = 0;
    }
}

static void Task_MenuItemTransitionOutAnim(void)
{
    MenuItemTransition *miTransition = (void *)((gCurTask)->data);
    Sprite *s = miTransition->s;

    s->x -= sMenuItemTransitionKeyFrames[miTransition->animFrame];
    gBldRegs.bldAlpha = (((miTransition->animFrame * 2) << 8) | (16 - (miTransition->animFrame * 2)));

    DisplaySprite(s);

    if (++miTransition->animFrame > 8) {
        s->x = miTransition->unk12;

        s->frameFlags &= ~0x80;
        TaskDestroy(gCurTask);
    }
}

static void Task_MenuItemTransitionInAnim(void)
{
    MenuItemTransition *miTransition = (void *)((gCurTask)->data);
    Sprite *s = miTransition->s;
    s32 i;
    s16 sum = 0;

    for (i = 0; i < 7 - miTransition->animFrame; i++) {
        sum += sMenuItemTransitionKeyFrames[i];
    };

    s->x = sum + miTransition->unk12;

    gBldRegs.bldAlpha = (((16 - (miTransition->animFrame * 2)) << 8) | (miTransition->animFrame * 2));
    DisplaySprite(s);

    if (++miTransition->animFrame > 8) {
        s->x = miTransition->unk12;

        s->frameFlags &= ~0x80;
        TaskDestroy(gCurTask);
    }
}

static void CreateLensFlareAnimation(void)
{
    struct Task *t = TaskCreate(Task_LensFlareAnim, sizeof(LensFlare), 0x2000, 0, 0);
    LensFlare *lensFlare = (void *)((t)->data);
    Sprite *s;
    SpriteTransform *transform;
    u16 posX;
    u32 i;

    for (i = 0; i < 8; i++) {
        s = &lensFlare->sprites[i];
        transform = &lensFlare->transforms[i];

        s->graphics.dest = VramMalloc(0x40);

        s->graphics.anim = 832;
        s->variant = sLensFlareSizes[i];
        s->prevVariant = -1;

        lensFlare->posSequenceX[i] = posX = sLensFlareStartPositions[i][0];
        lensFlare->posSequenceY[i] = sLensFlareStartPositions[i][1];

        s->graphics.size = 0;
        s->oamFlags = ((8 - i) << 6);
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = i | (((1) << (6)) | ((1) << (5)));

        transform->rotation = 0;
        transform->qScaleY = transform->qScaleX = posX * 2 + 0xB0;
        transform->x = lensFlare->posSequenceX[i];
        transform->y = lensFlare->posSequenceY[i];

        UpdateSpriteAnimation(s);
    }

    lensFlare->unk200 = gBgScrollRegs[1][0];
    lensFlare->unk202 = gBgScrollRegs[1][1];
    lensFlare->unk204 = 0;
    lensFlare->animFrame = 0;
}

static void Task_LensFlareAnim(void)
{
    LensFlare *lensFlare = (void *)((gCurTask)->data);
    Sprite *s;
    SpriteTransform *transform;
    u32 i;

    lensFlare->unk202 += 3;
    gBgScrollRegs[0][1] -= 3;

    gBldRegs.bldCnt = (1 << 13) | (1 << 12) | (1 << 11) | (1 << 10) | (1 << 9) | (1 << 8)
        | (1 << 6) | (1 << 4);
    gBldRegs.bldAlpha = (((31) << 8) | (7));


    if (!(lensFlare->animFrame & 1)) {
        for (i = 0; i < 8; i++) {
            s = &lensFlare->sprites[i];
            transform = &lensFlare->transforms[i];


            transform->x = sub_8085654(lensFlare->posSequenceX[i], -0x14, lensFlare->animFrame * 16, 8, 0);

            transform->y = sub_8085654(lensFlare->posSequenceY[i] + lensFlare->unk202 - gBgScrollRegs[1][1],
                                       -0x14 + lensFlare->unk202 - gBgScrollRegs[1][1], lensFlare->animFrame * 16, 8, 0);

            TransformSprite(s, transform);
            DisplaySprite(s);
        }
    }

    if (++lensFlare->animFrame > 17) {
        LensFlareAnimEnd();
    };
}

# 1 "include/../chao_garden/include/language.h" 1
# 1716 "src/game/title_screen.c" 2
# 1 "include/../chao_garden/include/program_params.h" 1
# 1717 "src/game/title_screen.c" 2
static void LoadTinyChaoGarden(void)
{
    u32 chaoGardenLang;

    u32 score = gLoadedSaveGame->score;

    switch (gLoadedSaveGame->language) {
        case 1:
            chaoGardenLang = 0;
            break;
        case 3:
            chaoGardenLang = 3;
            break;
        case 4:
            chaoGardenLang = 2;
            break;
        case 5:
            chaoGardenLang = 4;
            break;
        case 2:
        case 6:
            chaoGardenLang = 1;
            break;
        default:
            chaoGardenLang = gLoadedSaveGame->language & 1;
            break;
    }


    gFlags |= 0x8000;



    m4aMPlayAllStop();

    m4aSoundVSyncOff();
    LZ77UnCompWram(gMultiBootProgram_TinyChaoGarden, (void *)EWRAM_START);





    ((u32 *)(EWRAM_START + 0x8))[0] = score;
    ((u32 *)(EWRAM_START + 0x8))[1] = chaoGardenLang;


    ((u32 *)(EWRAM_START + 0x8))[2] = ((Random() + gFrameCount) << 8) + Random();
    SoftResetExram(0);
}

void CreateTitleScreenAndSkipIntro(void)
{
    struct Task *t;
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;

    t = TaskCreate(Task_ShowPressStartMenu, sizeof(TitleScreen), 0x1000, 0, 0);
    CreateTitleScreenWithoutIntro((void *)((t)->data));
}

void CreateTitleScreenAtPlayModeMenu(void)
{
    struct Task *t;
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;

    t = TaskCreate(Task_JumpToPlayModeMenu, sizeof(TitleScreen), 0x1000, 0, 0);
    CreateTitleScreenWithoutIntro((void *)((t)->data));
}

void CreateTitleScreenAtSinglePlayerMenu(void)
{
    struct Task *t;
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;

    t = TaskCreate(Task_JumpToSinglePlayerMenu, sizeof(TitleScreen), 0x1000, 0, 0);
    CreateTitleScreenWithoutIntro((void *)((t)->data));
}

static void SkipIntro(TitleScreen *titleScreen)
{
    ScreenFade *fade = &titleScreen->unk270;
    gFlags &= ~0x4;

    fade->window = 1;
    fade->brightness = 0;
    fade->flags = 2;
    fade->speed = 0x100;
    fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
    fade->bldAlpha = 0;
    UpdateScreenFade(fade);

    m4aMPlayAllStop();

    InitTitleScreenUI(titleScreen);
    ShowGameLogo(titleScreen);
    gCurTask->main = Task_ShowTitleScreenIntroSkipped;
}

static void Task_ShowPressStartMenu(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);

    DisplaySprite(&titleScreen->unkC0);
    ShowGameLogo(titleScreen);

    if (UpdateScreenFade(&titleScreen->unk270) == 1) {
        m4aSongNumStart(201);
        titleScreen->animFrame = 0;
        gCurTask->main = Task_PressStartMenuMain;
    }
}

static void Task_IntroStartSegaLogoAnim(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    if (UpdateScreenFade(&titleScreen->unk270) == 1) {
        gCurTask->main = Task_IntroFadeInSegaLogoAnim;

        gBldRegs.bldAlpha = (((16 - (0)) << 8) | (0));

        gBldRegs.bldCnt = (1 << 6) | (1 << 0) | (1 << 10);
        gDispCnt |= 0x0100;
    }
}

static void Task_IntroShowSegaLogo(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);

    if (titleScreen->animFrame > ((2)*60)) {
        titleScreen->animFrame = 0;
        gCurTask->main = Task_IntroFadeOutSegaLogoAnim;
    }
    titleScreen->animFrame++;
}

static void Task_IntroShowSonicTeamLogo(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);
    WavesBackgroundAnim(titleScreen);


    if (titleScreen->animFrame > ((2)*60)) {
        gCurTask->main = Task_IntroFadeOutSonicTeamLogoAnim;
        titleScreen->animFrame = 0;
    }
    titleScreen->animFrame++;
}

static void Task_IntroWaitUntilTitleScreenFanfare(void)
{
    TitleScreen *titleScreen = (void *)((gCurTask)->data);



    if (titleScreen->animFrame > ((1)*60)) {
        gFlags &= ~0x4;
        titleScreen->animFrame = 0;
        m4aSongNumStart(201);
        gCurTask->main = Task_PressStartMenuMain;
    }
    titleScreen->animFrame++;

    ShowGameLogo(titleScreen);
}

static void Task_StartTitleScreenDemo(void)
{
    gInputRecorder.mode = 2;

    gInputPlaybackData = gDemoRecordings[0];
    gSelectedCharacter = CHARACTER_SONIC;
    gCurrentLevel = sDemoLevels[0];

    gDemoPlayCounter = (gDemoPlayCounter + 1) % 4u;

    gGameMode = 0;

    CreateDemoManager();
    ApplyGameStageSettings();
    GameStageStart();

    TaskDestroy(gCurTask);
}

static void ShowGameLogo(TitleScreen *_)
{

    sub_8003EE4(0, 0x100, 0x100, 0, 0, (426 / 2) - 100, 8, gBgAffineRegs);
}

static void BirdAnimEnd(void)
{
    BirdAnimation *animation = (void *)((gCurTask)->data);
    Sprite *s = &animation->s;

    VramFree(s->graphics.dest);
    TaskDestroy(gCurTask);
}

static void CreateMenuItemTransition(Sprite *s, u8 type)
{
    struct Task *t;
    MenuItemTransition *miTransition;

    if (type == 0) {
        t = TaskCreate(Task_MenuItemTransitionOutAnim, sizeof(MenuItemTransition), 0x2000, 0, 0);
    } else if (type == 1) {
        t = TaskCreate(Task_MenuItemTransitionInAnim, sizeof(MenuItemTransition), 0x2000, 0, 0);
    } else {
        return;
    }
    miTransition = (void *)((t)->data);

    s->frameFlags |= 0x80;
    miTransition->s = s;
    miTransition->unk12 = s->x;
    miTransition->animFrame = 0;
}

static void LensFlareAnimEnd(void)
{
    LensFlare *lensFlare = (void *)((gCurTask)->data);

    u32 i;
    for (i = 0; i < 8; i++) {
        VramFree(lensFlare->sprites[i].graphics.dest);
    }

    TaskDestroy(gCurTask);
}


static inline void inline_CreateTitleScreenTaskWithoutIntro(TaskMain main)
{
    struct Task *t = TaskCreate(main, sizeof(TitleScreen), 0x1000, 0, 0);
    CreateTitleScreenWithoutIntro((void *)((t)->data));
}

__attribute__((unused)) void sub_808D824(void)
{

    struct Task *prevTask = gCurTask;
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;

    inline_CreateTitleScreenTaskWithoutIntro(Task_ShowPressStartMenu);

    TaskDestroy(gCurTask);
}

static void ResetWavesPalette(void)
{
    CpuFastSet(sWavesBrightnessPalette, (u16 *)((u16*)&PLTT[0]) + 224, 1);
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000;
}
